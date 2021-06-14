<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ax" tagdir="/WEB-INF/tags" %>

<ax:set key="title" value="${pageName}"/>
<ax:set key="page_desc" value="${PAGE_REMARK}"/>
<ax:set key="page_auto_height" value="true"/>

<ax:layout name="base">
    <jsp:attribute name="script">
        <script type="text/javascript" src="<c:url value='/assets/js/view/pms/guest.js' />"></script>
    </jsp:attribute>
    <jsp:body>

        <ax:page-buttons></ax:page-buttons>


        <div role="page-header">
            <ax:form name="searchView0">
                <ax:tbl clazz="ax-search-tbl" minWidth="500px">
                    <ax:tr>
                        <ax:td label='이름' width="300px">
                            <input type="text" class="search_name form-control" />  
                        </ax:td>
                        <ax:td label='전화번호' width="300px">
                            <input type="text" class="search_tel form-control" />  
                        </ax:td>
                        <ax:td label='이메일' width="300px">
                            <input type="text" class="search_email form-control" />  
                        </ax:td>
                    </ax:tr>
                    
                
                </ax:tbl>
            </ax:form>
    
            <form name="excelForm" class="js-form" method="post">           
            </form>
            
            <div class="H10"></div>
        </div>

        <ax:split-layout name="ax1" orientation="vertical">
            <ax:split-panel width="40%">

                <!-- 목록 -->
                <div class="ax-button-group" data-fit-height-aside="grid-view-01">
                    <div class="left">
                        <h2><i class="cqc-list"></i> 투숙객 목록 </h2>
                    </div>
                </div>
                <div data-ax5grid="grid-view-01" data-fit-height-content="grid-view-01" style="height: 200px;"></div>
            </ax:split-panel>
            <ax:splitter></ax:splitter>
              
            <ax:split-panel width="*" style="padding-left: 10px;" scroll="scroll">
                <div data-fit-height-aside="form-view-01">
                    <div class="ax-button-group">
                        <div class="left">
                            <h2><i class="cqc-news"></i> 투숙객정보 </h2>
                        </div>
                    </div>
                    
                    <form name="formView01" class="guestForm">
                        <ax:tbl clazz="ax-form-tbl" minWidth="1400px">
                            <ax:tr labelWidth="120px">
                                <ax:td label="이름" width="50%">
                                    <input type="text" name="guestNm" data-ax-path="guestNm" class="form-control">
                                </ax:td>
                                <ax:td label="영문" width="50%">
                                    <input type="text" name="guestNmEng" data-ax-path="guestNmEng" title="영문" class="form-control"  />
                                </ax:td>
                            </ax:tr>

                            <ax:tr labelWidth="120px">
                                <ax:td label="연락처" width="50%">
                                    <input type="text" name="guestTel" data-ax-path="guestTel" title="연락처" class="form-control" />
                                </ax:td>
                                <ax:td label="이메일" width="50%">
                                    <input type="text" name="email" data-ax-path="email" class="form-control"  />
                                </ax:td>
                            </ax:tr>
                        
                            <ax:tr labelWidth="120px">
                                <ax:td label="언어" width="50%">
                                  <ax:common-code groupCd="LANG" id="langCd" clazz="js-langCd" />
                                </ax:td>
                                <ax:td label="생년월일" width="40%">
                                    <input type="date" data-ax-path="brth" name="brth" claSss="form-control"/>
                                </ax:td>
                                
                                <span>
                                    <label><input type="radio" data-ax-path="gender" name="gender" value="M">남 </label>
                                    <label><input type="radio" data-ax-path="gender" name="gender" value="F">여 </label>
                                </span>
                            </ax:tr>
                    
                            <ax:tr labelWidth="120px">
                                <ax:td label="비고" width="100%">
                                    <textarea name="remark" data-ax-path="remark" rows="5" class="form-control"></textarea>
                                </ax:td>
                            </ax:tr>
                        </ax:tbl>  
                          
                        <div class="H5"></div>
                        <div class="ax-button-group">
                            <div class="left">
                                <h2><i class="cqc-list"></i> 투숙이력 </h2>
                            </div>
                            
                        </div>
                                        
                        <div data-ax5grid="grid-view-02"  style="height: 300px;">
                        </div>             
                           
                    </form>
                </ax:split-panel>
            </ax:split-layout>


    </jsp:body>
</ax:layout>