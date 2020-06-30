<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div id="tabInfo_menu">
	<ul>
		<c:forEach var="i" items="${menuKind }">
			<li><a class="menuTypeClick" href="#">${i.menukind }</a>
				<ul>
					<c:forEach var="j" items="${menu }">
						<c:if test="${i.menukind==j.menukind}">
							<li class="menuInfo">
								<div>
									<div class="menuPicture">
										<img src="/web/DeliveryImg/grilled-chicken-crispy.jpg">
									</div>
									<div>
										<span>${j.menuname}</span>
										<p>${j.menuexplain }</p>
									</div>
									<span class="price">${j.menuprice}¿ø</span>
									<div class="menuCnt">
										<a href="#up"><img src="/web/DeliveryImg/chevron-up.png"></a>
										<p>
											<span>1</span>&nbsp;&nbsp;°³
										</p>
										<a href="#down"><img
											src="/web/DeliveryImg/chevron-down.png"></a>
									</div>
									<div class="plus">
										<img src="/web/DeliveryImg/plus@2x.png" style="width: 17px">
									</div>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul></li>
		</c:forEach>

	</ul>
</div>