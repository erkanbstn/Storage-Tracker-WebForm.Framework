<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Devexpress_Technical_Project_Web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
  
    <asp:Label ID="Label1" runat="server" Text="Ürün Barkod No " Font-Bold="true"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Width="250" class="form form-control" placeholder="Ürün Barkod Numarası Giriniz..."></asp:TextBox>
    <br />
  
    <asp:Button ID="Button1" runat="server" Text="Ara" Width="130" CssClass="btn btn-primary" OnClick="Button1_Click" />

    <table class="table table-bordered"; style="margin-top:15px">
        <tr>   <th>Açıklama</th> <th>Tarih</th> <th>Barkod</th> </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate> 
              <tr> <td><%#Eval("Açıklama") %></td>   <td><%#Eval("Tarih") %></td>  <td><%#Eval("SeriNo") %></td> </tr>
                
                                                    </ItemTemplate>
        </asp:Repeater>            
        </tbody>
        
    </table>




</asp:Content>
