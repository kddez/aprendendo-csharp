<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="calculadora.aspx.cs" Inherits="SiteMaster2.Calculadora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script runat="server" language="C#">

        void MyButtonSoma(Object sender, EventArgs e)
        {
            int n1, n2, soma;
            n1 = int.Parse(Text1.Text);
            n2 = int.Parse(Text2.Text);
            soma = n1 + n2;
            ViewState ["ultimaop"] = soma;
            Resultado.Text = soma.ToString();

        }

        void MyButtonLimpar(Object sender, EventArgs e)
        {
            Text1.Text = Text2.Text = "";
        }

        void MyButtonSub(Object sender, EventArgs e)
        {
            int n1, n2, sub;
            n1 = int.Parse(Text1.Text);
            n2 = int.Parse(Text2.Text);
            sub = n1-n2;
            ViewState["ultimaop"] = sub;
            Resultado.Text = sub.ToString();
        }

        void MyButtonRest(Object sender, EventArgs e)
        {
            int n1, n2, rest;
            n1 = int.Parse(Text1.Text);
            n2 = int.Parse(Text2.Text);
            rest = n1 % n2;
            ViewState["ultimaop"] = rest;
            Resultado.Text = rest.ToString();
        }

        void MyButtonMult(Object sender, EventArgs e)
        {
            int n1, n2, mult;
            n1=int.Parse(Text1.Text);
            n2=int.Parse(Text2.Text);
            mult = n1*n2;
            ViewState["ultimaop"] = mult;
            Resultado.Text = mult.ToString();
        }

        void MyButtonPot(Object sender, EventArgs e)
        {
            double n1, n2, pot;
            n1 = int.Parse(Text1.Text);
            n2 = int.Parse(Text2.Text);
            pot = Math.Pow(n1, n2);
            ViewState["ultimaop"]= pot;
            Resultado.Text = pot.ToString();
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="center1" runat="server">
        <div style="height: 33px">
                Resultado: <asp:Label ID="Resultado" runat="server" ></asp:Label>
        </div>
        <p>
                <asp:textbox id="Text1" text="Primeiro número" runat="server" Height="24px" Width="150px" ></asp:textbox>
                <asp:TextBox ID="Text2" Text="Segundo número" runat ="server" Height="24px" Width="150px" ></asp:TextBox>
                </p>
        <p>
                <asp:button ID="Button1" Text="Somar" OnClick="MyButtonSoma" runat="server" Width="57px"></asp:button>
                <asp:button ID="Button3" Text="Subtração" OnClick="MyButtonSub" runat="server"></asp:button>
                <asp:button ID="Button4" Text="Resto da Divisão" OnClick="MyButtonRest" runat="server"></asp:button>
                <asp:Button ID="Button5" Text="Multiplicação" OnClick="MyButtonMult" runat="server" ></asp:Button>
                <asp:button ID="Button6" Text="Potenciação" OnClick ="MyButtonPot" runat="server" ></asp:button>
                <asp:button id="Button2" Text="Limpar" OnClick="MyButtonLimpar" runat="server"></asp:button>
                </p>
    </form>
</asp:Content>
