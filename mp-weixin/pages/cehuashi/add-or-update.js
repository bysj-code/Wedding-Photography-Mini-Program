(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/cehuashi/add-or-update"],{"2c71":function(e,n,t){"use strict";var r=t("a44f"),a=t.n(r);a.a},5156:function(e,n,t){"use strict";(function(e){t("f68b");r(t("66fd"));var n=r(t("c099"));function r(e){return e&&e.__esModule?e:{default:e}}e(n.default)}).call(this,t("543d")["createPage"])},"66c5":function(e,n,t){"use strict";t.r(n);var r=t("97bd"),a=t.n(r);for(var i in r)"default"!==i&&function(e){t.d(n,e,(function(){return r[e]}))}(i);n["default"]=a.a},"97bd":function(e,n,t){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=a(t("a34a"));function a(e){return e&&e.__esModule?e:{default:e}}function i(e,n,t,r,a,i,u){try{var o=e[i](u),c=o.value}catch(s){return void t(s)}o.done?n(c):Promise.resolve(c).then(r,a)}function u(e){return function(){var n=this,t=arguments;return new Promise((function(r,a){var u=e.apply(n,t);function o(e){i(u,r,a,o,c,"next",e)}function c(e){i(u,r,a,o,c,"throw",e)}o(void 0)}))}}var o=function(){Promise.all([t.e("common/vendor"),t.e("components/w-picker/w-picker")]).then(function(){return resolve(t("652d"))}.bind(null,t)).catch(t.oe)},c={data:function(){return{cross:"",ruleForm:{cehuazhanghao:"",mima:"",cehuaxingming:"",xingbie:"",youxiang:"",lianxishouji:"",xiangpian:""},xingbieOptions:[],xingbieIndex:0,user:{},ro:{cehuazhanghao:!1,mima:!1,cehuaxingming:!1,xingbie:!1,youxiang:!1,lianxishouji:!1,xiangpian:!1}}},components:{wPicker:o},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(n){var t=this;return u(r.default.mark((function a(){var i,u,o,c;return r.default.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return i=e.getStorageSync("nowTable"),a.next=3,t.$api.session(i);case 3:if(u=a.sent,t.user=u.data,t.xingbieOptions="男,女".split(","),t.ruleForm.userid=e.getStorageSync("userid"),n.refid&&(t.ruleForm.refid=n.refid,t.ruleForm.nickname=e.getStorageSync("nickname")),!n.id){a.next=14;break}return t.ruleForm.id=n.id,a.next=12,t.$api.info("cehuashi",t.ruleForm.id);case 12:u=a.sent,t.ruleForm=u.data;case 14:if(t.cross=n.cross,!n.cross){a.next=50;break}o=e.getStorageSync("crossObj"),a.t0=r.default.keys(o);case 18:if((a.t1=a.t0()).done){a.next=50;break}if(c=a.t1.value,"cehuazhanghao"!=c){a.next=24;break}return t.ruleForm.cehuazhanghao=o[c],t.ro.cehuazhanghao=!0,a.abrupt("continue",18);case 24:if("mima"!=c){a.next=28;break}return t.ruleForm.mima=o[c],t.ro.mima=!0,a.abrupt("continue",18);case 28:if("cehuaxingming"!=c){a.next=32;break}return t.ruleForm.cehuaxingming=o[c],t.ro.cehuaxingming=!0,a.abrupt("continue",18);case 32:if("xingbie"!=c){a.next=36;break}return t.ruleForm.xingbie=o[c],t.ro.xingbie=!0,a.abrupt("continue",18);case 36:if("youxiang"!=c){a.next=40;break}return t.ruleForm.youxiang=o[c],t.ro.youxiang=!0,a.abrupt("continue",18);case 40:if("lianxishouji"!=c){a.next=44;break}return t.ruleForm.lianxishouji=o[c],t.ro.lianxishouji=!0,a.abrupt("continue",18);case 44:if("xiangpian"!=c){a.next=48;break}return t.ruleForm.xiangpian=o[c],t.ro.xiangpian=!0,a.abrupt("continue",18);case 48:a.next=18;break;case 50:t.styleChange();case 51:case"end":return a.stop()}}),a)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},xingbieChange:function(e){this.xingbieIndex=e.target.value,this.ruleForm.xingbie=this.xingbieOptions[this.xingbieIndex]},xiangpianTap:function(){var e=this;this.$api.upload((function(n){e.ruleForm.xiangpian="upload/"+n.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var n=this;return u(r.default.mark((function t(){var a,i,u,o,c,s,l,f,g,d;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(n.ruleForm.cehuazhanghao){t.next=3;break}return n.$utils.msg("策划账号不能为空"),t.abrupt("return");case 3:if(n.ruleForm.mima){t.next=6;break}return n.$utils.msg("密码不能为空"),t.abrupt("return");case 6:if(n.ruleForm.cehuaxingming){t.next=9;break}return n.$utils.msg("策划姓名不能为空"),t.abrupt("return");case 9:if(!n.ruleForm.youxiang||n.$validate.isEmail(n.ruleForm.youxiang)){t.next=12;break}return n.$utils.msg("邮箱应输入邮件格式"),t.abrupt("return");case 12:if(!n.ruleForm.lianxishouji||n.$validate.isMobile(n.ruleForm.lianxishouji)){t.next=15;break}return n.$utils.msg("联系手机应输入手机格式"),t.abrupt("return");case 15:if(!n.cross){t.next=31;break}if(o=e.getStorageSync("statusColumnName"),c=e.getStorageSync("statusColumnValue"),""==o){t.next=31;break}if(s=e.getStorageSync("crossObj"),o.startsWith("[")){t.next=27;break}for(l in s)l==o&&(s[l]=c);return f=e.getStorageSync("crossTable"),t.next=25,n.$api.update("".concat(f),s);case 25:t.next=31;break;case 27:a=Number(e.getStorageSync("userid")),i=s["id"],u=e.getStorageSync("statusColumnName"),u=u.replace(/\[/,"").replace(/\]/,"");case 31:if(!i||!a){t.next=53;break}return n.ruleForm.crossuserid=a,n.ruleForm.crossrefid=i,g={page:1,limit:10,crossuserid:a,crossrefid:i},t.next=37,n.$api.list("cehuashi",g);case 37:if(d=t.sent,!(d.data.total>=u)){t.next=43;break}return n.$utils.msg(e.getStorageSync("tips")),t.abrupt("return",!1);case 43:if(!n.ruleForm.id){t.next=48;break}return t.next=46,n.$api.update("cehuashi",n.ruleForm);case 46:t.next=50;break;case 48:return t.next=50,n.$api.add("cehuashi",n.ruleForm);case 50:n.$utils.msgBack("提交成功");case 51:t.next=61;break;case 53:if(!n.ruleForm.id){t.next=58;break}return t.next=56,n.$api.update("cehuashi",n.ruleForm);case 56:t.next=60;break;case 58:return t.next=60,n.$api.add("cehuashi",n.ruleForm);case 60:n.$utils.msgBack("提交成功");case 61:case"end":return t.stop()}}),t)})))()},optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var n=new Date,t=n.getFullYear(),r=n.getMonth()+1,a=n.getDate();return"start"===e?t-=60:"end"===e&&(t+=2),r=r>9?r:"0"+r,a=a>9?a:"0"+a,"".concat(t,"-").concat(r,"-").concat(a)},toggleTab:function(e){this.$refs[e].show()}}};n.default=c}).call(this,t("543d")["default"])},a44f:function(e,n,t){},c099:function(e,n,t){"use strict";t.r(n);var r=t("c472"),a=t("66c5");for(var i in a)"default"!==i&&function(e){t.d(n,e,(function(){return a[e]}))}(i);t("2c71");var u,o=t("f0c5"),c=Object(o["a"])(a["default"],r["b"],r["c"],!1,null,"611dcece",null,!1,r["a"],u);n["default"]=c.exports},c472:function(e,n,t){"use strict";var r;t.d(n,"b",(function(){return a})),t.d(n,"c",(function(){return i})),t.d(n,"a",(function(){return r}));var a=function(){var e=this,n=e.$createElement;e._self._c},i=[]}},[["5156","common/runtime","common/vendor"]]]);