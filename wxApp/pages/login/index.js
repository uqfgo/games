// pages/login/index.js
Page({

    /**
     * 页面的初始数据
     */
    data: {

    },
    getUserInfo: function(e) {
        /**
         * 
         * 
         * 
         *  2.2、并返回上两个页面
         * 
         *  3.1、没登陆就提示没登陆没成功重新授权
         */

        // 1、先判断用户是否登陆了 
        const loginCondition = e.detail.errMsg.indexOf('ok') !== -1 ? true : false

        if (loginCondition) {
            // 2、登陆了

            // 把用户的个人信息和登陆状态更新到缓存里
            const { userInfo } = e.detail
            wx.setStorageSync('userInfo', userInfo)
            wx.setStorageSync('loginCondition', loginCondition)

            // 提示框提示登陆成功
            wx.showToast({
                title: '登陆成功'
            })

            wx.navigateBack({
                delta: 1
            });



        } else {
            // 3、没登陆
            wx.showToast({
                title: '登陆失败，请重试',
                icon: 'none'
            })
        }




    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {

    },

    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady: function() {

    },

    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function() {

    },

    /**
     * 生命周期函数--监听页面隐藏
     */
    onHide: function() {

    },

    /**
     * 生命周期函数--监听页面卸载
     */
    onUnload: function() {

    },

    /**
     * 页面相关事件处理函数--监听用户下拉动作
     */
    onPullDownRefresh: function() {

    },

    /**
     * 页面上拉触底事件的处理函数
     */
    onReachBottom: function() {

    },

    /**
     * 用户点击右上角分享
     */
    onShareAppMessage: function() {

    }
})