import { request } from "../../request/index.js"

// 引入第三方文件
import regeneratorRuntime from "../../lib/runtime/runtime"


Page({

    /* 接口要的参数 */
    QueryParams: {
        query: '',
        cid: '',
        pagenum: 1,
        pagesize: 10
    },

    /**
     * 页面的初始数据
     */
    data: {
        tabs: [{
                id: 0,
                name: '综合',
                isActive: true
            },
            {
                id: 1,
                name: '销量',
                isActive: false
            },
            {
                id: 2,
                name: '价格',
                isActive: false
            }
        ],
        goodsList: []
    },
    totalPages: 0,
    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {
        this.QueryParams.cid = options.cid || ''
        this.QueryParams.query = options.query || ''
        this.getGoodsList()

    },
    TabitemChange(e) {
        const { index } = e.detail
        let { tabs } = this.data
        tabs.forEach((item, i) => i === index ? item.isActive = true : item.isActive = false)
        this.setData({
            tabs
        })
    },

    // 获取商品的列表数据
    async getGoodsList() {
        const res = await request({ url: 'https://api.zbztb.cn/api/public/v1/goods/search', data: this.QueryParams })

        // 总条数
        const total = res.total

        // 总页数
        this.totalPages = Math.ceil(total / this.QueryParams.pagesize)

        this.setData({
            // 旧新数据的组合
            goodsList: [...this.data.goodsList, ...res.goods]
        })
    },

    // 滚动条触底事件
    onReachBottom(e) {
        if (this.QueryParams.pagenum >= this.totalPages) {
            wx.showToast({
                title: '已经到底了',
                icon: 'none',
                image: '',
                duration: 1500,
                mask: false,
                success: (result) => {

                },
                fail: () => {},
                complete: () => {}
            });
        } else {
            this.QueryParams.pagenum++;
            this.getGoodsList()
        }
    },

    // 页面下拉刷新
    onPullDownRefresh(e) {
        this.data.goodsList = []
        this.QueryParams.pagenum = 1
        this.totalPages = 0
        this.getGoodsList()
        wx.stopPullDownRefresh()
    }
})