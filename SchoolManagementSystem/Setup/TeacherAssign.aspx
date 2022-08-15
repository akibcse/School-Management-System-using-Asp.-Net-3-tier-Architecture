<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="TeacherAssign.aspx.cs" Inherits="SchoolManagementSystem.Setup.TeacherAssign" %>

<%@ Register Src="~/ResponseMessage.ascx" TagPrefix="uc1" TagName="ResponseMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:HiddenField id="hdnStuId" runat="server"></asp:HiddenField>
    <uc1:responsemessage runat="server" ID="rmmsg" />
    <div class="content-wrapper">
    <div class="container">
        <uc1:responsemessage runat="server" ID="ResponseMessage" />
        
        <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Class Schedule</h3>
                </div>

                <uc1:ResponseMessage runat="server" ID="ResponseMessage1" />

                <!-- /.card-header -->
                <!-- form start -->

                <div class="card-body">
                   <div class="row">
                 <div class="col-md-4">
                    <label class="form-label">Teacher</label>
                    <asp:DropDownList ID="ddlTeacher" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Shift</label>
                    <asp:DropDownList ID="ddlShift" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlShift_SelectedIndexChanged">
                        <asp:ListItem>Select--</asp:ListItem>
                        <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Day</asp:ListItem>
                    </asp:DropDownList>
                </div>
                 <div class="col-md-4">
                    <label class="form-label">Class Name</label>
                    <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                 <div class="col-md-10">
                    <label class="form-label">Schedule Name</label>
                    <asp:DropDownList ID="ddlSchedule" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                </div>
                 
               
                <div class="col-md-2 mt-1">
                    <label>&nbsp;</label>
                    <asp:Button ID="AddBtn" CssClass="btn btn-primary form-control" runat="server" Text="Add"   />
                </div>

                </div>
                </div>
            </div>



<div class="card card-primary">
                <div class="card-header ">
                    <h3 class="card-title text-center">Class Schedule List</h3>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group ">
                                <%-- <asp:GridView ID="gvClassSchedule" runat="server" CssClass="table table-bordered" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="Shift" HeaderText="Shift" />
                            <asp:BoundField DataField="Class" HeaderText="Class" />
                            <asp:BoundField DataField="ClassId" HeaderText="ClassID"  Visible="false" />
                            <asp:BoundField DataField="WeekDay" HeaderText="WeekDay" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" />
                           <asp:BoundField DataField="SubjectId" HeaderText="SubjectId" Visible="false" />
                            <asp:BoundField DataField="StartTime" HeaderText="StartTime" />
                            <asp:BoundField DataField="EndTime" HeaderText="EndTime" />
                          </Columns>
                    </asp:GridView>--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                        </div>
                        <div class="col-md-5">
                        </div>
                        <div class="col-md-2">   
                    <asp:Button ID="btnSave" CssClass="btn btn-primary form-control" runat="server" Text="Submit" OnClick="btnSave_Click"  />
                </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
