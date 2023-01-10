<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRegistration.aspx.cs" Inherits="WebApplication1.FrmRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script>
        function checkItems(source, args) {
            var chklist = document.getElementById("ChkBeverages");
            var items = chklist.getElementsByTagName("input");
            for (var i = 0; i < items.length; i++) {
                if (items[i].checked) {
                    args.IsValid = true;
                    return;
                }
            }
            args.IsValid = false;
        }
    </script>
</head>
    <body>
        <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-5">
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">First Name</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtFirstName" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RfvFirstName" runat="server" ControlToValidate="TxtFirstName" ForeColor="Red" ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label  col-md-4">Email Id</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtEmailId" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RfvEmail" runat="server" ControlToValidate="TxtEmailId" ForeColor="Red" ErrorMessage="Please Enter email id" />
                            <asp:RegularExpressionValidator ID="RvEmail" runat="server" ControlToValidate="TxtEmailId" ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">Password</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password" />
                            <asp:RequiredFieldValidator ID="RfvPassword" runat="server" ControlToValidate="TxtPassword" ForeColor="Red" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">Confirm Password</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" />
                            <asp:CompareValidator ID="CvConfirmPassword" runat="server" ForeColor="Red" ControlToValidate="TxtConfirmPassword" ControlToCompare="TxtPassword" ErrorMessage="Password Doesn't match" />
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">City</label>
                        <div class="col-md-8">
                            <asp:DropDownList CssClass="form-select" ID="DdlCities" runat="server" >
                                <asp:ListItem Text="--Select--" Value="0" />
                                <asp:ListItem Text="Chennai" Value="CHE" />
                                <asp:ListItem Text="Hyderabad" Value="HYD" />
                                <asp:ListItem Text="Mumbai" Value="MUM" />
                                <asp:ListItem Text="Visakapatinam" Value="VIZ" />
                                <asp:ListItem Text="Bengaluru" Value="BNG" />

                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RvCity" runat="server" ForeColor="Red" ControlToValidate="DdlCities"  InitialValue="0" ErrorMessage="Please Select City"></asp:RequiredFieldValidator>

                         <!--   <asp:CompareValidator ID="CvCity" runat="server"
                                ControlToValidate="DdlCities" ValueToCompare="0" Operator="NotEqual"
                                Type="Integer" ForeColor="Red" ErrorMessage="Please Select City" /> -->
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">Salary</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtSalary" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RfvSalary" runat="server"  ControlToValidate="TxtSalary" ForeColor="Red" ErrorMessage="Please Enter Salary"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RvSalary" runat="server" ControlToValidate="TxtSalary" ErrorMessage="Salary must be in between 10000 and 100000 only" ForeColor="Red" MinimumValue="10000" MaximumValue="100000" Type="Currency" />
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <div class="col-md-4 form-label">Beverages</div>
                        <div class="col-md-8">
                            <asp:CheckBoxList ID="ChkBeverages" runat="server" ValidationGroup="g1">
                                <asp:ListItem Text="Tea" />
                                <asp:ListItem Text="Coffee" />
                                <asp:ListItem Text="Soft Drinks" />
                                <asp:ListItem Text="Chocolate Coffee" />
                            </asp:CheckBoxList>
                            <asp:CustomValidator ID="cvBeverages" runat="server" ForeColor="Red" ErrorMessage="Please select any one item" 
                                ClientValidationFunction="checkItems" 
                                OnServerValidate="cvBeverages_ServerValidate" > </asp:CustomValidator>

                        </div>
                    </div>
                    <div class="mb-2">
                        <asp:Button Text="Submit" ID="BtnSubmit" runat="server" />
                        <asp:Button Text="Reset" ID="BtnReset" runat="server" />
                    </div>
                    <div>
                        <asp:HyperLink ID="link1" runat="server">HyperLink</asp:HyperLink>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" DisplayMode="BulletList" />
                </div>
        </div>
    </form>
    </body>
</html>
