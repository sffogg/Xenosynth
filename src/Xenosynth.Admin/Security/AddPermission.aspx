<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AddPermission.aspx.cs" Inherits="Xenosynth.Admin.Security.AddPermission" Title="Untitled Page" %>
<%@ Register TagPrefix="xs" TagName="PermissionTasks" Src="PermissionTasks.ascx" %>
<%@ Register TagPrefix="xs" TagName="PermissionTabControl" Src="PermissionTabControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <xs:PermissionTabControl ID="PermissionTabControl" runat="server" Selected="General" />
    <div class="formPanel">
    <fieldset>
	    <legend>Permission Properties</legend>
	    
	    <label for="TextBoxKey">Key:</label> <asp:TextBox CssClass="input" Runat="server" ID="TextBoxKey" />
	    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="error" Runat="server" ControlToValidate="TextBoxKey" Display="Dynamic" ErrorMessage="Required." />
	    <asp:CustomValidator ID="CustomValidator1" CssClass="error" Runat="server" ControlToValidate="TextBoxKey" Display="Dynamic" ErrorMessage="Key already exists." OnServerValidate="ValidatorDuplicate_OnServerValidate" />
	    <br />
	    
	    <label for="TextBoxName">Name:</label> <asp:TextBox CssClass="input" Runat="server" ID="TextBoxName" />
	    <br />
	    
	    <label for="TextBoxDescription">Description:</label> <asp:TextBox CssClass="input" Runat="server" ID="TextBoxDescription" />
	    <br />
	    
	    <label for="TextBoxCategory">Category:</label> <asp:TextBox CssClass="input" Runat="server" ID="TextBoxCategory" />
	    <br />
	    
	    <asp:Button Runat="server" CssClass="submit" Text="Create &raquo;" OnClick="ButtonAdd_OnClick" ID="Button1"/>
	    <asp:Button ID="Button2" Runat="server" Text="Cancel" OnClick="ButtonCancel_OnClick" CausesValidation="False"/>
    </fieldset>
    </div>
    <DataBinding:DataBindingManager ID="DataBindingManagerPermission" runat="server">
		<DataBinding:TextBoxBinding ControlToBind="TextBoxKey" DataMember="Key" />
		<DataBinding:TextBoxBinding ControlToBind="TextBoxName" DataMember="Name" />
		<DataBinding:TextBoxBinding ControlToBind="TextBoxDescription" DataMember="Description" />
		<DataBinding:TextBoxBinding ControlToBind="TextBoxCategory" DataMember="Category" />
	</DataBinding:DataBindingManager>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Side" runat="server">
    <xs:PermissionTasks ID="PermissionTasks1" runat="server" />
</asp:Content>
