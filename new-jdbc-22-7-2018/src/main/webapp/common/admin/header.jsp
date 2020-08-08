<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<div id="navbar" class="navbar navbar-default">
	<script type="text/javascript">
		try {
			ace.settings.check('navbar', 'fixed')
		} catch (e) {
		}
	</script>

	<div class="navbar-container" id="navbar-container">
		<div class="navbar-header pull-left">
			<a href="index.html" class="navbar-brand"> <small> <i
					class="fa fa-leaf"></i> Trang chủ admin
			</small>
			</a>
		</div>

		<div class="navbar-buttons navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">

				<li class="light-blue"><a data-toggle="dropdown" href="#"
					class="dropdown-toggle"> <span
						class="user-info"> <small>Welcome,</small> ${USERMODEL.fullName}
					</span> <i class="ace-icon fa fa-caret-down"></i>
				</a>

					<ul
						class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
						<li><a href="#"> <i class="ace-icon fa fa-cog"></i>
								Settings
						</a></li>

						<li><a href="profile.html"> <i
								class="ace-icon fa fa-user"></i> Profile
						</a></li>

						<li class="divider"></li>

						<li><a href="<c:url value='/thoat?action=logout'/>"> <i class="ace-icon fa fa-power-off"></i>
								Logout
						</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<!-- /.navbar-container -->
</div>

