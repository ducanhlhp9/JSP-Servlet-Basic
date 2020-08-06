<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<div id="sidebar" class="sidebar                  responsive">
   <script type="text/javascript">
      try {
      	ace.settings.check('sidebar', 'fixed')
      } catch (e) {
      }
   </script>
   <div class="sidebar-shortcuts" id="sidebar-shortcuts">
      <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
         <button class="btn btn-success">
         <i class="ace-icon fa fa-signal"></i>
         </button>
         <button class="btn btn-info">
         <i class="ace-icon fa fa-pencil"></i>
         </button>
         <button class="btn btn-warning">
         <i class="ace-icon fa fa-users"></i>
         </button>
         <button class="btn btn-danger">
         <i class="ace-icon fa fa-cogs"></i>
         </button>
      </div>
      <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
         <span class="btn btn-success"></span> <span class="btn btn-info"></span>
         <span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
      </div>
   </div>
   <!-- /.sidebar-shortcuts -->
   <ul class="nav nav-list">
      <li class="">
         <a href="#" class="dropdown-toggle">
         <i class="menu-icon fa fa-list"></i>
         <span class="menu-text"> Quản lý bài viết </span>
         <b class="arrow fa fa-angle-down"></b>
         </a>
         <b class="arrow"></b>
         <ul class="submenu nav-hide" style="display: block;">
            <li class="">
               <a href="<c:url value="admin-news?page=1&maxPageItem=2&sortName=title&sortBy=desc"/>">
               <i class="menu-icon fa fa-caret-right"></i>
               Danh sách bài viết
               </a>
               <b class="arrow"></b>
            </li>
           
         </ul>
      </li>
   </ul>
   <!-- /.nav-list -->
   <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
      <i class="ace-icon fa fa-angle-double-left"
         data-icon1="ace-icon fa fa-angle-double-left"
         data-icon2="ace-icon fa fa-angle-double-right"></i>
   </div>
   <script type="text/javascript">
      try {
      	ace.settings.check('sidebar', 'collapsed')
      } catch (e) {
      }
   </script>
</div>