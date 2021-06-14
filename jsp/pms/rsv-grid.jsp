<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ax" tagdir="/WEB-INF/tags" %>

<ax:set key="title" value="${pageName}"/>
<ax:set key="page_desc" value="${PAGE_REMARK}"/>
<ax:set key="page_auto_height" value="true"/>

<ax:layout name="base">
    <jsp:attribute name="script">
        <ax:script-lang key="ax.script" var="LANG" />
        <ax:script-lang key="ax.base" var="COL" />
        <script type="text/javascript" src="<c:url value='/assets/js/view/pms/rsv-grid.js' />"></script>
    </jsp:attribute>
    <jsp:body>

        <div data-page-buttons>
            <div class="button-warp">
                <button type="button" class="btn btn-info" data-page-btn="search"><i class="fas fa-search"></i> 검색</button>
                <button type="button" class="btn btn-default" data-page-btn="clear">검색선택초기화</button>
                <button type="button" class="btn btn-default" data-page-btn="excel"><i class="far fa-file-excel"></i> 엑셀다운로드</button>
            </div>
        </div>


        <div role="page-header">
            <ax:form name="searchView0">
                <ax:tbl clazz="ax-search-tbl" minWidth="500px">
                    <ax:tr>
                        <ax:td label="검색어" width="30%">
                            <input type="text" name="filter" class="js-filter form-control" />
                        </ax:td>
                        <ax:td label="예약번호" width="30%">
                            <input type="text" name="rsvNum" class="js-rsvNum form-control" />
                        </ax:td>
                        <ax:td label="예약일" width="30%">
                            <div class="form-group" data-ax5picker="rsvDt">
                                <div class="input-group" data-ax5picker="date">   
                                    <!-- picker= date 추가! -->
                                    <!-- <input type="text" class="form-control" placeholder="YYYY/MM/DD"> -->
                                    <input
                                        type="text" name="rsvDtStart"
                                        class="js-rsvDtStart form-control"
                                        data-ax-path="rsvDtStart"
                                        data-ax5formatter="date"
                                        placeholder="yyyy-mm-dd"
                                    />
                                    <span class="input-group-addon">~</span>
                                    <!-- <input type="text" class="form-control" placeholder="YYYY/MM/DD"> -->
                                    <input
                                        type="text" name="rsvDtEnd"
                                        class="js-rsvDtEnd form-control"
                                        data-ax-path="rsvDtEnd"
                                        data-ax5formatter="date"
                                        placeholder="yyyy-mm-dd"
                                    />
                                    <span class="input-group-addon"><i class="cqc-calendar"></i></span>
                                </div>
                            </div>
                        </ax:td>
                    </ax:tr>
                    <ax:tr>
                        <ax:td label="객실타입" width="30%">
                            <ax:common-code groupCd="PMS_ROOM_TYPE" name="pmsRoomType" dataPath="pmsRoomType" clazz="js-pmsRoomType form-control W100" emptyText="전체" />
                        </ax:td>
                        <ax:td label="도착일" width="30%">
                            <div class="form-group" data-ax5picker="arrDt">
                                <div class="input-group" data-ax5picker="date">
                                    <input
                                        type="text" name="arrDtStart"
                                        class="js-arrDtStart form-control"
                                        data-ax-path="arrDtStart"
                                        data-ax5formatter="date"
                                        placeholder="yyyy-mm-dd"
                                    />
                                    <span class="input-group-addon">~</span>
                                    <input
                                        type="text" name="arrDtEnd"
                                        class="js-arrDtEnd form-control"
                                        data-ax-path="arrDtEnd"
                                        data-ax5formatter="date"
                                        placeholder="yyyy-mm-dd"
                                    />
                                    <span class="input-group-addon"><i class="cqc-calendar"></i></span>
                                </div>
                            </div>
                        </ax:td>
                        <ax:td label="출발일" width="30%">
                            <div class="form-group" data-ax5picker="arrDt">
                                <div class="input-group" data-ax5picker="date">
                                    <input
                                        type="text" name="depDtStart"
                                        class="js-depDtStart form-control"
                                        data-ax-path="depDtStart"
                                        data-ax5formatter="date"
                                        placeholder="yyyy-mm-dd"
                                    />
                                    <span class="input-group-addon">~</span>
                                    <input
                                        type="text" name="depDtEnd"
                                        class="js-depDtEnd form-control"
                                        data-ax-path="depDtEnd"
                                        data-ax5formatter="date"
                                        placeholder="yyyy-mm-dd"
                                    />
                                    <span class="input-group-addon"><i class="cqc-calendar"></i></span>
                                </div>
                            </div>
                        </ax:td>
                    </ax:tr>
                    <ax:tr>
                        <ax:td label="상태" width="100%">
                            <ax:common-code name="sttusCd" groupCd="CHK_STATUS" dataPath="sttusCd" type="checkbox" emptyText="전체" />
                        </ax:td>
                    </ax:tr>
                </ax:tbl>
            </ax:form>
            <!-- <div class="H10"></div> -->
        </div>

        <ax:split-layout name="ax1" orientation="horizontal">
            <ax:split-panel width="*" style="">

                <!-- 목록 -->
                <div class="ax-button-group" data-fit-height-aside="grid-view-01">
                <!-- <div class="ax-button-group"> -->
                    <div class="left">
                        <h2><i class="cqc-list"></i>예약목록 </h2>
                    </div>
                    <div class="right">
                        <div style="display: inline-block">
                        <ax:common-code groupCd="CHK_STATUS" name="sttusCd" dataPath="sttusCd" clazz="js-sttusCd inline-block W100" />
                        </div>
                        <button type="button" class="btn btn-default" data-grid-view-01-btn="statusChange">상태변경</button>
                    </div>
                </div>
                <div data-ax5grid="grid-view-01" data-fit-height-content="grid-view-01" style="height: 300px;"></div>
                <!-- <div data-ax5grid="grid-view-01" style="height: 300px;"></div> -->
            </ax:split-panel>
        </ax:split-layout>

    </jsp:body>
</ax:layout>