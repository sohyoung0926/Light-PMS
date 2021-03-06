<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ax" tagdir="/WEB-INF/tags" %>

<ax:set key="title" value="${pageName}"/>
<ax:set key="page_desc" value="${pageRemark}"/>
<ax:set key="page_auto_height" value="true"/>

<ax:layout name="base">
    <jsp:attribute name="js">
        <script src="/assets/plugins/prettify/prettify.js"></script>
        <script src="/assets/plugins/prettify/lang-css.js"></script>
    </jsp:attribute>
    <jsp:attribute name="css">
        <link rel="stylesheet" type="text/css" href="/assets/plugins/prettify/skins/github.css"/>
    </jsp:attribute>
    <jsp:attribute name="script">
        <script type="text/javascript" src="<c:url value='/assets/js/view/_samples/page-structure.js' />"></script>
        <script>
            $(function () {
                //$('[data-ax5layout]').ax5layout("reset");
                
                $('[data-left-view-01-btn]').on("click", function () {
                    //console.log(this.getAttribute("data-left-view-01-btn"));
                    $('[data-ax5layout="ax2"]').ax5layout("tabOpen", this.getAttribute("data-left-view-01-btn"));
                });
                
            });
        </script>
    </jsp:attribute>
    <jsp:body>

        <ax:page-buttons></ax:page-buttons>


        <div role="page-header">
            <ax:form name="searchView0">
                <ax:tbl clazz="ax-search-tbl" minWidth="500px">
                    <ax:tr>
                        <ax:td label='ax.admin.sample.search.condition1' width="300px">
                            <input type="text" class="form-control" />
                        </ax:td>
                        <ax:td label='ax.admin.sample.search.condition2' width="300px">
                            <input type="text" class="form-control" />
                        </ax:td>
                        <ax:td label='ax.admin.sample.search.condition3' width="300px">
                            <input type="text" class="form-control" />
                        </ax:td>
                    </ax:tr>
                </ax:tbl>
            </ax:form>
            <div class="H10"></div>
        </div>

        <ax:split-layout name="ax1" orientation="horizontal">
            <ax:split-panel height="250" style="padding-bottom: 10px;">

                <div class="ax-button-group" data-fit-height-aside="left-view-01">
                    <div class="left">
                        <h2>
                            <i class="cqc-list"></i>
                            <ax:lang id="ax.admin.sample.layout.toppanel"/> </h2>
                    </div>
                    <div class="right">
                        <button type="button" class="btn btn-default" data-left-view-01-btn="add"><i class="cqc-circle-with-plus"></i> <ax:lang id="ax.admin.add"/></button>
                    </div>
                </div>

                <div data-fit-height-content="left-view-01" style="height: 300px;border: 1px solid #D8D8D8;background: #fff;">

<pre>
&lt;div data-fit-height-aside="left-view-01">&lt;/div>
&lt;div data-fit-height-content="left-view-01">&lt;/div>
&lt;div data-fit-height-aside="left-view-01">&lt;/div>
// [data-fit-height-aside] [data-dit-height-content] ??? ????????? ?????? ?????????????????? ??????????????? ???????????????
// ?????????????????? ?????? ?????? ??????????????? ????????????. aside????????? ???????????? ??? ???????????? content???????????? ???????????? style.height??? ???????????? ???????????????.
// data-fit-height ????????? ax5layout ?????? ?????? ????????? ???????????? ?????? ?????? ?????? ????????? ???????????? axboot.init?????? ????????? ?????? ????????????.
</pre>

                </div>

                <div class="ax-button-group ax-button-group-bottom" data-fit-height-aside="left-view-01">
                    <div class="left">
                        <button type="button" class="btn btn-default" data-left-view-01-btn="0"><ax:lang id="ax.admin.button"/> ????????????</button>
                        <button type="button" class="btn btn-primary" data-left-view-01-btn="1"><ax:lang id="ax.admin.button"/> ????????????</button>
                        <button type="button" class="btn btn-info" data-left-view-01-btn="2"><ax:lang id="ax.admin.button"/> ????????????</button>
                        <button type="button" class="btn btn-success" data-left-view-01-btn="3"><ax:lang id="ax.admin.button"/> ????????????</button>
                        <button type="button" class="btn btn-warning" data-left-view-01-btn="4"><ax:lang id="ax.admin.button"/> ????????????</button>
                    </div>
                </div>

            </ax:split-panel>
            <ax:splitter></ax:splitter>
            <ax:split-panel height="*" style="padding-top: 10px;">

                <ax:tab-layout name="ax2" data_fit_height_content="layout-view-01" style="height:100%;">
                    <ax:tab-panel label="ax.admin.sample.layout.tab.d1" scroll="scroll">
                        <p>
                            <ax:lang id="ax.admin.sample.layout.tab.d1"/>
                        </p>
                    </ax:tab-panel>
                    <ax:tab-panel label="ax.admin.sample.layout.tab.d2" scroll="scroll" active="true">

                        <div class="ax-button-group" data-fit-height-aside="right-view-01">
                            <div class="left">
                                <h2>
                                    <i class="cqc-list"></i>
                                    <ax:lang id="ax.admin.sample.layout.tabpanel"/> </h2>
                            </div>
                        </div>

                        <div data-fit-height-content="right-view-01" style="height: 300px;border: 1px solid #D8D8D8;background: #fff;">

<pre>
// ??? ??????????????? ????????? ??????????????? ?????? ??? ????????????.
// ax:tab-layout ????????? ????????????. name??? ????????? ?????? layout??? ????????? ???????????? ?????? ?????? ?????? ?????????.
&lt;ax:tab-layout name="ax2" data_fit_height_content="layout-view-01" style="height:100%;">
    &lt;ax:tab-panel label="????????????" scroll="scroll">
        &lt;p>
            ????????????
        &lt;/p>
    &lt;/ax:tab-panel>
    &lt;ax:tab-panel label="????????????" scroll="scroll" active="true"> // active="true"??? ????????? ????????? ????????? ?????????.
        &lt;p>
            ????????????
        &lt;/p>
    &lt;/ax:tab-panel>
    &lt;ax:tab-panel label="????????????" scroll="scroll">
        &lt;p>
            ????????????
        &lt;/p>
    &lt;/ax:tab-panel>
    &lt;ax:tab-panel label="????????????" scroll="scroll">
        &lt;p>
            ????????????
        &lt;/p>
    &lt;/ax:tab-panel>
    &lt;ax:tab-panel label="????????????" scroll="scroll">
        &lt;p>
            ????????????
        &lt;/p>
    &lt;/ax:tab-panel>
&lt;/ax:tab-layout>

</pre>
                        </div>

                    </ax:tab-panel>
                    <ax:tab-panel label="ax.admin.sample.layout.tab.d3" scroll="scroll">
                        <p>
                            <ax:lang id="ax.admin.sample.layout.tab.d3"/>
                        </p>
                    </ax:tab-panel>
                    <ax:tab-panel label="ax.admin.sample.layout.tab.d4" scroll="scroll">
                        <p>
                            <ax:lang id="ax.admin.sample.layout.tab.d4"/>
                        </p>
                    </ax:tab-panel>
                    <ax:tab-panel label="ax.admin.sample.layout.tab.d5" scroll="scroll">
                        <p>
                            <ax:lang id="ax.admin.sample.layout.tab.d5"/>
                        </p>
                    </ax:tab-panel>
                </ax:tab-layout>

            </ax:split-panel>
        </ax:split-layout>

    </jsp:body>
</ax:layout>