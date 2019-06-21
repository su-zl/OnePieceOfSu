const Sequelize = require('sequelize');
const config = require('./config');
const Koa =require('koa');
const router=require('koa-router')();

const app=new Koa();

let data=null;

var sequelize = new Sequelize(config.database, config.username, config.password, {
    host: config.host,
    dialect: 'mysql',
    pool: {
        max: 5,
        min: 0,
        idle: 30000
    }
});

var book_movie_music = sequelize.define('book_movie_music', {
    id: {
        type: Sequelize.STRING,
        primaryKey: true
    },
    index:Sequelize.STRING,
    type: Sequelize.STRING(10),
    img_src: Sequelize.STRING(100),
    title: Sequelize.STRING(100),
    message: Sequelize.STRING(100),
    excerpt: Sequelize.STRING(2000),
    comment: Sequelize.STRING(2000),
}, {
        timestamps: false,
        freezeTableName: true // Model 对应的表名将与model名相同
    });


// (async()=>{
//     var data=await book_movie_music.findAll({
//         where:{
//             type:'book'
//         },
//         attributes: { 
//             exclude: ['id'] //排除
//         }
//     });
//     console.log(`find ${data.length} data:`);
//     console.log(JSON.stringify(data));
    
// })();
router.get('/api/book_movie_music', async (ctx, next) => {
    
    // console.log(ctx.query);  //{ aid: '123' }       获取的是对象   用的最多的方式  **推荐
    // console.log(ctx.querystring);  //aid=123&name=zhangsan      获取的是一个字符串
    // console.log(ctx.url);   //获取url地址
    //  router.get('/product/:aid',async (ctx)=>{
    //     console.log(ctx.params); //{ aid: '123' } //获取动态路由的数据
    //     ctx.body='这是商品页面';
    // });

    var type = ctx.query.type;
    data=await book_movie_music.findAll({
        where:{
            type:type
        },
        attributes: { 
            exclude: ['id'] //排除
        }
    });
    ctx.response.body = '<p>'+JSON.stringify(data)+'</p>';
});

// app.use(async (ctx, next) => {
//     await next();
//     ctx.response.type = 'text/html';
//     ctx.response.body = '<p>'+JSON.stringify(data)+'</p>';
// });

// app.use(async (ctx, next) => {
//     data=await book_movie_music.findAll({
//         where:{
//             type:'book'
//         },
//         attributes: { 
//             exclude: ['id'] //排除
//         }
//     });
// });
app.use(router.routes());
// 在端口3000监听:
app.listen(3000);
console.log('app started at port 3000...');
