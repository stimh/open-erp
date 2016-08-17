<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../base/path.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>查询项目信息</title>
    <jsp:include page="../../base/hb-headc.jsp"></jsp:include>
    <!--<script type="text/javascript" src="/dt-page/extjs.js"></script>-->
</head>
<body>
<div class="breadcrumbs" id="breadcrumbs">
    <script type="text/javascript">
        try {
            ace.settings.check('breadcrumbs', 'fixed')
        } catch (e) {
        }
    </script>
    <ol class="breadcrumb">
        <li><a href="#">开发</a></li>
        <li><a href="#">项目</a></li>
        <li class="active">列表</li>
    </ol>
    <!-- /.breadcrumb -->
    <!-- /section:basics/content.searchbox -->
</div>

<div class="page-content">

    <%--<div class="page-header">
      <h1>
        开发
        <small><i class="icon-double-angle-right"></i> 项目列表信息</small>
      </h1>
    </div>--%>
    <!-- PAGE CONTENT BEGINS -->
    <div class="row">
        <div class="col-xs-12">
            <table id="example" class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th style="text-align: center">选择</th>
                    <th style="text-align: center">项目名称</th>
                    <th style="text-align: center">客户</th>
                    <th style="text-align: center">区域</th>
                    <th style="text-align: center">系列</th>
                    <th style="text-align: center">推销样交期</th>
                    <th style="text-align: center">创建人</th>
                    <th style="text-align: center">项目创建时间</th>
                    <th style="text-align: center">备注</th>
                    <th style="text-align: center">最后修改时间</th>
                    <th style="text-align: center">操作</th>
                </tr>
                </thead>
                <tbody></tbody>
                <!-- tbody是必须的 -->
            </table>


        </div>
        <!-- Button trigger modal -->
    </div>
</div>

</body>
</html>
<script id="tpl" type="text/x-handlebars-template">
    {{#each func}}
    <button type="button" class="btn btn-{{this.type}} btn-sm" onclick="{{this.fn}}">{{this.name}}</button>
    {{/each}}
</script>
<script type="text/javascript">

    function downoffer(natrualkeys){
        window.location.href =path + "/development/project/download_offer/"+natrualkeys;
    }

    /**
     * 批量合并
     * 未做
     * @private
     */
    function _mergeList() {
        var str = '';
        $("input[name='checkList']:checked").each(function (i, o) {
            str += $(this).val();
            str += ",";
        });
        if (str.length > 0) {
            var IDS = str.substr(0, str.length - 1);
            alert("你要合并的数据集id为" + IDS);
            downoffer(str)
        } else {
            alert("至少选择一条记录操作");
        }
    }


</script>
<jsp:include page="../../base/hb-footj.jsp"></jsp:include>
<script type="text/javascript" src="<%=path%>/resources/js/interfaces/development/project/project-list.js?v=<%=version%>"></script>