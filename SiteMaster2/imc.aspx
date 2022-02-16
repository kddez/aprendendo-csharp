<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="imc.aspx.cs" Inherits="SiteMaster2.imc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script runat="server" language="C#">

        void MyButtonCalc (Object sender, EventArgs e)
        {
            float peso, alt, alt2, imc;
            peso = float.Parse(Text1.Text);
            alt = float.Parse(Text2.Text);
            alt2 = (alt*alt);
            imc = (peso / alt2);
           /* ViewState["result"] = imc;*/
            Resultado.Text = imc.ToString();

        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:textbox id="Text1" text="Peso" runat="server" Height="24px" Width="150px" ></asp:textbox>
                <asp:TextBox ID="Text2" Text="Altura" runat ="server" Height="24px" Width="150px" ></asp:TextBox>
                                IMC: <asp:Label ID="Resultado" runat="server" ></asp:Label>
                </p>
        <p>
                <asp:button ID="Button1" Text="Calcular" OnClick="MyButtonCalc" runat="server" Width="57px"></asp:button>
        </div>
    </form>
</asp:Content>
