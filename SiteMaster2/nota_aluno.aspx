<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="nota_aluno.aspx.cs" Inherits="SiteMaster2.nota_aluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script runat="server" language="C#">

        void MyButtonCalc (Object sender, EventArgs e)
        {
            string nome;
            float nota1, nota2, nota3, md;
            nota1 = float.Parse(Text1.Text);
            nota2 = float.Parse(Text2.Text);
            nota3 = float.Parse(Text4.Text);
            md = ((nota1 + nota2 + nota3) / 2);
            ViewState["nota"] = md;
            Resultado.Text = md.ToString();
            nome = (Text3.Text);
            Nome.Text = nome.ToString();

            if (md <= 5)
            {
                Sit.Text = "Reprovado";
            }
            else if (md>=7)
            {
                Sit.Text = "Aprovado";
            }
            else
            {
                Sit.Text = "Em recuperação";
            }
        }
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
         <div>
             <asp:textbox id="Text3" text="Nome" runat="server" Height="24px" Width="150px" ></asp:textbox>
                <asp:textbox id="Text1" text="Nota 1" runat="server" Height="24px" Width="150px" ></asp:textbox>
                <asp:TextBox ID="Text2" Text="Nota 2" runat ="server" Height="24px" Width="150px" ></asp:TextBox>
              <asp:TextBox ID="Text4" Text="Nota 3" runat ="server" Height="24px" Width="150px" ></asp:TextBox>
                Nome do aluno: <asp:Label ID="Nome" runat="server" ></asp:Label>
                                Média: <asp:Label ID="Resultado" runat="server" ></asp:Label>
                                Situação: <asp:Label ID="Sit" runat="server" ></asp:Label>
                <asp:button ID="Button1" Text="Calcular" OnClick="MyButtonCalc" runat="server" Width="90px"></asp:button>
        </div>
    </form>
</asp:Content>
