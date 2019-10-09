<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Calculator.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            position: relative;
            top: 50%;
            transform: translateY(+50%);
            width: 25%;            
            border-radius: 8px;
            border: 1px solid #bdbdbd;
            border-spacing: 15px;   
            height: 320px;
        }
        .text-box-style {
            margin: 0 auto;   
            width: 100%;
            height: 100%;            
            border: 1px solid #bdbdbd;
            border-radius: 8px;
            text-align: center;            
        }
        .button-style-operand {
            margin: 0 auto;   
            width: 100%;
            height: 100%;
            background-color: #f5f5f5;
            border-radius: 6px;
            border: none;
        }
        .button-style-operator {
            margin: 0 auto;   
            width: 100%;
            height: 100%;
            background-color: #e0e0e0;
            border-radius: 6px;
            border: none;
        }
        .button-style-enter {
            margin: 0 auto;   
            width: 100%;
            height: 100%;
            background-color: #4fc3f7;
            border-radius: 6px;
            border: none;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style5">
            <tr>
                <td colspan="4">
                    <asp:TextBox ID="txtBox" runat="server" CssClass="text-box-style"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn7" runat="server" Text="7" AccessKey="7" CssClass="button-style-operand" OnClick="btns_Click" />
                </td>
                <td>
                    <asp:Button ID="btn8" runat="server" Text="8" AccessKey="8" CssClass="button-style-operand" OnClick="btns_Click" />
                </td>
                <td>
                    <asp:Button ID="btn9" runat="server" Text="9" AccessKey="9" CssClass="button-style-operand" OnClick="btns_Click" />
                </td>
                <td>
                    <asp:Button ID="btnDivision" runat="server" Text=":" AccessKey=":" CssClass="button-style-operator" OnClick="btnDivision_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn4" runat="server" Text="4" AccessKey="4" CssClass="button-style-operand" OnClick="btns_Click" />
                </td>
                <td>
                    <asp:Button ID="btn5" runat="server" Text="5" AccessKey="5" CssClass="button-style-operand" OnClick="btns_Click" />
                </td>
                <td>
                    <asp:Button ID="btn6" runat="server" Text="6" AccessKey="6" CssClass="button-style-operand" OnClick="btns_Click" />
                </td>
                <td>
                    <asp:Button ID="btnMultiplication" runat="server" Text="x" AccessKey="*" CssClass="button-style-operator" OnClick="btnMultiplication_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn1" runat="server" Text="1" AccessKey="1" CssClass="button-style-operand" OnClick="btns_Click" />
                </td>
                <td>
                    <asp:Button ID="btn2" runat="server" Text="2" AccessKey="2" CssClass="button-style-operand" OnClick="btns_Click" />
                </td>
                <td>
                    <asp:Button ID="btn3" runat="server" Text="3" AccessKey="3" CssClass="button-style-operand" OnClick="btns_Click" />
                </td>
                <td>
                    <asp:Button ID="btnDeduction" runat="server" Text="-" AccessKey="-" CssClass="button-style-operator" OnClick="btnDeduction_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn0" runat="server" Text="0" AccessKey="0" CssClass="button-style-operand" OnClick="btns_Click" />
                </td>
                <td>
                    <asp:Button ID="btnOB" runat="server" Text="(" AccessKey="(" CssClass="button-style-operator" OnClick="btnOB_Click" />
                </td>
                <td>
                    <asp:Button ID="btnCB" runat="server" Text=")" AccessKey=")" CssClass="button-style-operator" OnClick="btnCB_Click" />
                </td>
                <td>
                    <asp:Button ID="btnAddition" runat="server" Text="+" AccessKey="+" CssClass="button-style-operator" OnClick="btnAddition_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnC" runat="server" Text="C" CssClass="button-style-operator" OnClick="btnC_Click" />
                </td>
                <td>
                    <asp:Button ID="btnCE" runat="server" Text="CE" CssClass="button-style-operator" OnClick="btnCE_Click" />
                </td>
                <td colspan="2">
                    <asp:Button ID="btnEnter" runat="server" Text="Enter" CssClass="button-style-enter" OnClick="btnEnter_Click" AccessKey="=" />
                </td>
            </tr>
        </table>
    </form>    
</body>
</html>