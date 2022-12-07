<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script language="javascript" type="text/javascript">
		function OnTextChanged(s, e) {
			var files = s.GetText().replace(/\s|C:\\fakepath\\/g, "").split(",");
			label.SetText(null);
			for (index in files)
				label.SetText(label.GetText() + files[index] + "<br/>");
		}
		function OnFilesUploadComplete(s, e) {
			label.SetText(null);
		}		
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<dx:ASPxUploadControl ID="ASPxUploadControl1" runat="server" Width="280px" UploadMode="Advanced">
		<ClientSideEvents TextChanged="OnTextChanged" FilesUploadComplete="OnFilesUploadComplete" />
		<AdvancedModeSettings EnableMultiSelect="True" />
	</dx:ASPxUploadControl>
	Selected files:<br />
	<dx:ASPxLabel ID="ASPxLabel1" runat="server" ClientInstanceName="label" Font-Bold="true"
		ForeColor="DarkBlue">
	</dx:ASPxLabel>
	</form>
</body>
</html>
