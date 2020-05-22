// pages/collect/index.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        tabs: [{
                id: 0,
                name: '收藏的店铺',
                isActive: false
            },
            {
                id: 1,
                name: '收藏的商品',
                isActive: false
            },
            {
                id: 2,
                name: '关注的商品',
                isActive: false
            },
            {
                id: 3,
                name: '我的足迹',
                isActive: false
            }
        ],
        collectGoods: []
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {
        const { index } = options

        let tabs = this.data.tabs
        tabs.forEach((item, i) => {
            if (i === index - 1) {
                item.isActive = true
            }
        })

        this.setData({
            tabs
        })
    },
    /**
     * 点击切换
     */
    TabitemChange(e) {
        const { index } = e.detail
        let { tabs } = this.data
        tabs.forEach((item, i) => i === index ? item.isActive = true : item.isActive = false)
        this.setData({
            tabs
        })
    },
    /**
     * 拿收藏的商品数据
     */
    getCollect: function() {
        const collectData = wx.getStorageSync('collectData') || []
        this.setData({
            collectGoods: collectData
        })

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
        this.getCollect()
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