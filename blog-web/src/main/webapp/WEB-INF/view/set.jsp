<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>设置</title>
<meta name="keywords" content="前端模板">
<meta name="description" content="前端模板">

<script src="${pageContext.request.contextPath}/static/js/jquery/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/layui/layui.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/index/index.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/index/freezeheader.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/layui/lay/modules/layer.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/index/sliders.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/index/html5.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/index/set.js" type="text/javascript"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css" media="all"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/modules/layer/default/layer.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css"/>
</head>
<body>
<%@include file="header.jsp" %>

    <div class="layui-container container" style="padding-top:70px;">
   
    	<div class="main fly-user-main layui-clear">
  <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
    <li class="layui-nav-item">
      <a href="home.html">
        <i class="layui-icon">&#xe609;</i>
        我的主页
      </a>
    </li>
    <li class="layui-nav-item">
      <a href="user_center.html">
        <i class="layui-icon">&#xe612;</i>
        用户中心
      </a>
    </li>
    <li class="layui-nav-item layui-this">
      <a href="set.html">
        <i class="layui-icon">&#xe620;</i>
        基本设置
      </a>
    </li>
    <li class="layui-nav-item">
      <a href="message.html">
        <i class="layui-icon">&#xe611;</i>
        我的消息
      </a>
    </li>
  </ul>

  
  <div class="fly-panel fly-panel-user">
    <div class="layui-tab layui-tab-brief" lay-filter="user">
      <ul class="layui-tab-title" id="LAY_mine">
        <li class="layui-this" lay-id="info">我的资料</li>
        <li lay-id="avatar">头像</li>
        <li lay-id="pass">密码</li>
        <li lay-id="bind">帐号绑定</li>
      </ul>
      <div class="layui-tab-content" style="padding: 20px 0;">
        <div class="layui-form layui-form-pane layui-tab-item layui-show">
          <form class="layui-form" method="post" action="#">
            <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">邮箱</label>
              <div class="layui-input-inline">
                <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">如果您在邮箱已激活的情况下，变更了邮箱，需<a href="activate.html" style="font-size: 12px; color: #4f99cf;">重新验证邮箱</a>。</div>
            </div>
            <div class="layui-form-item">
              <label for="L_username" class="layui-form-label">昵称</label>
              <div class="layui-input-inline">
                <input type="text" name="username" lay-verify="required" autocomplete="off" value="" class="layui-input">
              </div>
              <div class="layui-inline">
                <div class="layui-input-inline">
                  <input type="radio" name="sex" value="0" checked title="男">
                  <input type="radio" name="sex" value="1" title="女">
                </div>
              </div>
            </div>
            <div class="layui-form-item">
              <label for="L_city" class="layui-form-label">城市</label>
              <div class="layui-input-inline">
                <input type="text" id="L_city" name="city" lay-verify="required" autocomplete="off" value="" class="layui-input">
              </div>
            </div>
            <div class="layui-form-item layui-form-text">
              <label for="L_sign" class="layui-form-label">签名</label>
              <div class="layui-input-block">
                <textarea placeholder="随便写些什么刷下存在感" id="L_sign"  name="sign" autocomplete="off" class="layui-textarea" style="height: 80px;"></textarea>
              </div>
            </div>
            <div class="layui-form-item">
              <button class="layui-btn" lay-filter="*" lay-submit>确认修改</button>
            </div>
            </form>
          </div>
          
          <div class="layui-form layui-form-pane layui-tab-item">
            <div class="layui-form-item">
              <div class="avatar-add">
                <p>建议尺寸168*168，支持jpg、png、gif，最大不能超过30KB</p>
                <div class="upload-img">
                	<button type="button" class="layui-btn layui-bg-blue" id="upload_head">
                    <i class="layui-icon"></i>上传头像</button>
                </div>
                <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0">
                <span class="loading"></span>
              </div>
            </div>
          </div>
          
          <div class="layui-form layui-form-pane layui-tab-item">
            <form class="layui-form" method="post" action="#">
              <div class="layui-form-item">
                <label for="L_nowpass" class="layui-form-label">当前密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_nowpass" name="nowpass" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">新密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_pass" name="pass" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">6到16个字符</div>
              </div>
              <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">确认密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_repass" name="repass" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <button class="layui-btn" lay-filter="*" lay-submit>确认修改</button>
              </div>
            </form>
          </div>
          
          <div class="layui-form layui-form-pane layui-tab-item">
            <ul class="app-bind">
              <li class="fly-msg app-havebind">
                <i class="iconfont icon-qq"></i>
                <span>已成功绑定，您可以使用QQ帐号直接登录Fly社区，当然，您也可以</span>
                <a href="javascript:;" class="acc-unbind" type="qq_id">解除绑定</a>
                
                <!-- <a href="" onclick="layer.msg('正在绑定微博QQ', {icon:16, shade: 0.1, time:0})" class="acc-bind" type="qq_id">立即绑定</a>
                <span>，即可使用QQ帐号登录Fly社区</span> -->
              </li>
              <li class="fly-msg">
                <i class="iconfont icon-weibo"></i>
                <!-- <span>已成功绑定，您可以使用微博直接登录Fly社区，当然，您也可以</span>
                <a href="javascript:;" class="acc-unbind" type="weibo_id">解除绑定</a> -->
                
                <a href="" class="acc-weibo" type="weibo_id"  onclick="layer.msg('正在绑定微博', {icon:16, shade: 0.1, time:0})" >立即绑定</a>
                <span>，即可使用微博帐号登录Fly社区</span>
              </li>
            </ul>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
    </div>
 <!-- footer -->
 <%@include file="footer.jsp" %>
    </body>
</html>