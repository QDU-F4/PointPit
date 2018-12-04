
function changePic(picName){
    document.getElementById("outer").style.backgroundImage =
        "url(flower/" + picName + ")";

}



function register(){
    location = "注册账号.html";
}
//注册账号
function A(){
    if(document.getElementById("iread").checked==true){
        document.getElementById("sbt").style.visibility="visible";
    }
    else
    {
        document.getElementById("sbt").style.visibility="hidden";
    }

}





function D(){
    if(document.getElementById("acc").value==''){
        document.getElementById("span0").innerHTML = "名称不能为空";
    }
    if(document.getElementById("name").value==''){
        document.getElementById("span1").innerHTML = "昵称不能为空";
    }
    if(document.getElementById("upwd").value==''){
        document.getElementById("span2").innerHTML="密码不能为空";
    }

    if(document.getElementById("upwd2").value==''){
        document.getElementById("span3").innerHTML="确认密码不能为空";
    }
    else if(document.getElementById("upwd").value!=document.getElementById("upwd2").value){
        document.getElementById("span3").innerHTML="两次密码必须一致";
    }
    else{
        $(document).ready(function(){

            var userManager = getUserManager();
            // $('#sbt').click(function () {
            var user = {
                account: $('#acc').val(),   // string key
                pwd: $('#upwd').val(),           // string
            };
            if (userManager.registerUser(user)) {

                window.open("花花世界.html");

            } else {
                alert('注册失败');
            }
// });
        });
    }
}
//注册与登陆


function getUserManager() {
    // 用户数据的基本结构
    var user = {
        account: undefined, // string key
        pwd: undefined,     // string
        name: undefined,    // string
        gender: undefined,  // string
        age: undefined,     // int
        tel: undefined,     // string
        email: undefined,   // string
        address: undefined, // string
    }


    var key_user_prefix = 'user_';                  // localStorage
    var key_cur_user_account = 'cur_user_account';  // sessionStorage

    // 注册用户
    function registerUser(user) {
        var result = false; // true: success; false: existed;
        var key = key_user_prefix + user.account;
        if (localStorage.getItem(key)) {
            //   do nothing
            console.warn('user has been existed');
        } else {
            registerOrUpdateUser(user);
            result = true;
        }
        return result;
    }
    // 更新用户
    function updateUser(user) {
        var result = false; // true: success; false: existed;
        var key = key_user_prefix + user.account;
        if (localStorage.getItem(key)) {
            registerOrUpdateUser(user);
            result = true;
        } else {
            //   do nothing
            console.warn('user has not been existed');
        }
        return result;
    }
    // 注册或更新用户
    function registerOrUpdateUser(user) {
        var key = key_user_prefix + user.account;
        var value = user.account +
            '|' + user.pwd +
            '|' + user.name +
            '|' + user.gender +
            '|' + user.age +
            '|' + user.tel +
            '|' + user.email +
            '|' + user.address;
        localStorage.setItem(key, value);
    }

    // 删除用户
    function unregisterUser(account) {
        localStorage.removeItem(key_user_prefix + account);
    }

    // 检查用户是否存在
    function checkUser(account, pwd) {
        var existed = false;
        var value = localStorage.getItem(key_user_prefix + account);
        if (value) {
            var items = value.split('|');
            var real_pwd = items[1];
            if (pwd === real_pwd) {
                existed = true;
            }
        }
        return existed;
    }

    // 根据账号获取用户信息
    function getUserByAccount(account, showPwd) {
        var user = undefined;
        var value = localStorage.getItem(key_user_prefix + account);
        if (value) {
            var items = value.split('|');
            user = {
                account: items[0],                              // string account
                pwd: (showPwd === true) ? items[1] : '******',   // string
                name: items[2],                                 // string
                gender: items[3],                               // string
                age: parseInt(items[4]),                        // int
                tel: items[5],                                  // string
                email: items[6],                                // string
                address: items[7],                              // string
            };
        }
        return user;
    }
    // 根据条件列出所有的用户信息
    function listAllUsers(showPwd, conditions) {
        var users = [];
        for (var i = 0; i < localStorage.length; i++) {
            var key = localStorage.key(i);
            if (key.startsWith(key_user_prefix)) {
                var account = key.substring(key_user_prefix.length, key.length);
                var user = getUserByAccount(account, showPwd);
                // 判断条件
                if (conditions) {

                    var meet = true;
                    if (conditions.gender) {
                        meet = meet && user.gender === conditions.gender;
                    }
                    if (conditions.minAge) {
                        meet = meet && user.age >= conditions.minAge;
                    }
                    if (conditions.maxAge) {
                        meet = meet && user.age <= conditions.maxAge;
                    }
                    if (meet) {
                        users.push(user);
                    }
                } else {
                    users.push(user);
                }
            }
        }
        return users;
    }



    // 用户登录
    function login(accout, pwd) {
        var user = undefined;
        if (checkUser(accout, pwd)) {
            user = getUserByAccount(accout);
            sessionStorage.setItem(key_cur_user_account, accout);
        }
        return user;
    }
    // 用户注销
    function logout() {
        var result = false; // true：用户成功登出；false：用户未登录
        if (sessionStorage.getItem(key_cur_user_account)) {
            sessionStorage.removeItem(key_cur_user_account);
            result = true;
        } else {
            // do nothing
        }
        return result;
    }
    // 获取当前用户信息
    function getCurrentUser() {
        var user = undefined;
        var cur_user_account = sessionStorage.getItem(key_cur_user_account);
        if (cur_user_account) {
            user = getUserByAccount(cur_user_account);
        }
        return user;
    }




    // --------------------------------------------------------------------------------------
    return {
        registerUser: registerUser,
        updateUser: updateUser,
        registerOrUpdateUser: registerOrUpdateUser,
        unregisterUser: unregisterUser,
        checkUser: checkUser,
        getUserByAccount: getUserByAccount,
        listAllUsers: listAllUsers,
        login: login,
        logout: logout,
        getCurrentUser: getCurrentUser,
    };

}