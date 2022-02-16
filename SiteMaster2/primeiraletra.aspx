<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="primeiraletra.aspx.cs" Inherits="SiteMaster2.primeiraletra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script runat="server" language="C#">

        void MyButtonResult (Object sender, EventArgs e)
        {

            string nome, sobre;
            nome = (Text1.Text);
            sobre = (Text2.Text);
            string[] nnome = { Text1.Text };
            ViewState["nome"] = (Text1.Text [0]);
            nome1.Text = ViewState["nome"].ToString();

            string[] ssobre = { Text2.Text };
            ViewState["sobre"] = (Text2.Text[0]);
            sobrenome.Text = ViewState["sobre"].ToString();
        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:textbox id="Text1" text="Nome" runat="server" Height="24px" Width="150px" ></asp:textbox>
            
            <asp:textbox id="Text2" text="Sobrenome" runat="server" Height="24px" Width="150px" ></asp:textbox>
            
            <asp:button ID="Button1" Text="Resultado" OnClick="MyButtonResult" runat="server" Width="90px"></asp:button>
            
            <p />Letra do nome:               <asp:Label ID="nome1" runat="server" ></asp:Label> <br />
            
            Letra do sobrenome:               <asp:Label ID="sobrenome" runat="server" ></asp:Label>
        </div>
    </form>
</asp:Content>
