<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sit_aluno.aspx.cs" Inherits="SiteMaster2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script runat="server" language="C#">

        void MyButtonCalc (Object sender, EventArgs e)
        {
            float n1, n2, n3, n4, n5, md, md2;
            string nome;
            nome = (tnome.Text);
            n1 = float.Parse(Text1.Text);
            n2 = float.Parse(Text2.Text);
            n3 = float.Parse(Text3.Text);
            n4 = float.Parse(Text4.Text);
            n5 = float.Parse(Text5.Text);
            md = (n1 + n2 + n3 + n4 + n5) / 5;
            md2 = md;

            ViewState["result"] = md;
            Sit.Text = ViewState["result"].ToString();
            ViewState["nome"] = nome;
            Nome.Text = ViewState["nome"].ToString();
            ViewState["media"] =  md2;
            Resultado.Text = ViewState["media"].ToString();

            if (md <= 5.9)
            {
                Sit.Text = "Reprovado";
            }else if (md == 6 && md<=6.9)
            {
                Sit.Text = "Em recuperação";
            }else if (md ==7 && md<= 8.9)
            {
                Sit.Text = "Bom";
            }else if (md == 9 && md <= 10)
            {
                Sit.Text = "Ótimo";
            }
            else if (md2 <= 10){
                Resultado.Text = "Nulo";
            }




        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">
        <div>
                <p><asp:textbox id="tnome" text="Nome" runat="server" Height="24px" Width="150px" ></asp:textbox> </p>
                <asp:textbox id="Text1" text="Nota 1" runat="server" Height="24px" Width="150px" ></asp:textbox>
                <asp:TextBox ID="Text2" Text="Nota 2" runat ="server" Height="24px" Width="150px" ></asp:TextBox>
                <asp:TextBox ID="Text3" Text="Nota 3" runat ="server" Height="24px" Width="150px" ></asp:TextBox>
                <asp:TextBox ID="Text4" Text="Nota 3" runat ="server" Height="24px" Width="150px" ></asp:TextBox>
                <asp:TextBox ID="Text5" Text="Nota 3" runat ="server" Height="24px" Width="150px" ></asp:TextBox>

                Nome do aluno: <asp:Label ID="Nome" runat="server" ></asp:Label>
                Média: <asp:Label ID="Resultado" runat="server" ></asp:Label>
                Situação: <asp:Label ID="Sit" runat="server" ></asp:Label>
                <asp:button ID="Button1" Text="Calcular" OnClick="MyButtonCalc" runat="server" Width="90px"></asp:button>
        </div>
    </form>
</asp:Content>
