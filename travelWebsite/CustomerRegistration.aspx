<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="travelWebsite.CustomerRegistration" %>
<asp:Content ID="registrationHead" ContentPlaceHolderID="head" runat="server">    
    <title>Customer Registration</title>
    <link href="styling/CustomerRegistration.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="registrationBody" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <h2>Customer Registration</h2>

<fieldset class="sectStyle">
    <legend>Account Info:</legend>
    <div class="form-group">
        <label class="control-label">Username:</label>
        <div>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValidatorUsername" runat="server" ErrorMessage="Please enter a username" ControlToValidate="txtUsername" Display="Dynamic"></asp:RequiredFieldValidator>            
        </div>
        <br />
        <label class="control-label">Password:</label>
        <div>
            <asp:TextBox ID="txtPassword1" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValidatorPassword1" runat="server" ErrorMessage="Please enter a password" ControlToValidate="txtPassword1" Display="Dynamic"></asp:RequiredFieldValidator>            
        </div>
        <br />
        <label class="control-label">Confirm Password:</label>
        <div>
            <asp:TextBox ID="txtPassword2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValidatorPassword2" runat="server" ErrorMessage="Please confirm your password" ControlToValidate="txtPassword2" Display="Dynamic"></asp:RequiredFieldValidator>            
            <asp:CompareValidator ID="compareValidatorPassword" runat="server" ControlToCompare="txtPassword1" ControlToValidate="txtPassword2" ErrorMessage="Passwords do not match" Display="Dynamic"></asp:CompareValidator>            
        </div>
    </div>    
</fieldset>

<fieldset class="sectStyle">
    <legend>Personal Info:</legend>
    <div class="form-group">
        <label class="control-label">First Name:</label>
        <div>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValidatorFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please enter your first name" Display="Dynamic"></asp:RequiredFieldValidator>           
            <asp:RegularExpressionValidator ID="lettersValidator" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="Only letters accepted" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>           
        </div>
        <br />
        <label class="control-label">Last Name:</label>
        <div>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValidatorLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please enter your last name" Display="Dynamic"></asp:RequiredFieldValidator>            
            <asp:RegularExpressionValidator ID="lettersValidator0" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Only letters accepted" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>           
        </div>
    </div>    
</fieldset>
        
<fieldset class="sectStyle">
    <legend>Address:</legend>
    <div class="form-group">
        <label class="control-label">Address:</label>
        <div>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValidatorAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please enter your Address" Display="Dynamic"></asp:RequiredFieldValidator>            
            <asp:RegularExpressionValidator ID="lettersNumbersValidator" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Letters, numbers, periods, and hyphens only" ValidationExpression="^[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
        </div>
        <br />
        <label class="control-label">City:</label>
        <div>
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValidatorCity" runat="server" ControlToValidate="txtCity" ErrorMessage="Please enter your city" Display="Dynamic"></asp:RequiredFieldValidator>            
            <asp:RegularExpressionValidator ID="lettersValidator1" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="Only letters accepted" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>           
        </div>
        <br />
        <label class="control-label">Province:</label>
        <div>
            <asp:DropDownList ID="ddlProvince" runat="server" CssClass="form-control">
                <asp:ListItem Enabled="true" Text="Select Province" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Alberta" Value="AB"></asp:ListItem>
                <asp:ListItem Text="British Columbia" Value="BC"></asp:ListItem>
                <asp:ListItem Text="Manitoba" Value="MB"></asp:ListItem>
                <asp:ListItem Text="New Brunswick" Value="NB"></asp:ListItem>
                <asp:ListItem Text="Newfoundland" Value="NL"></asp:ListItem>
                <asp:ListItem Text="Nova Scotia" Value="NS"></asp:ListItem>
                <asp:ListItem Text="Northwest Territories" Value="NT"></asp:ListItem>
                <asp:ListItem Text="Nunavut" Value="NU"></asp:ListItem>
                <asp:ListItem Text="Ontario" Value="ON"></asp:ListItem>
                <asp:ListItem Text="Prince Edward Island" Value="PE"></asp:ListItem>
                <asp:ListItem Text="Quebec" Value="QC"></asp:ListItem>
                <asp:ListItem Text="Saskatchewan" Value="SK"></asp:ListItem>
                <asp:ListItem Text="Yukon" Value="YT"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="reqValidatorProvince" runat="server" ErrorMessage="Please choose your province" InitialValue="-1" ControlToValidate="ddlProvince" Display="Dynamic"></asp:RequiredFieldValidator>            
        </div>
        <br />
        <label class="control-label">Country:</label>
        <div>
            <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValidatorCountry" runat="server" ErrorMessage="Please enter your country" ControlToValidate="txtCountry" Display="Dynamic"></asp:RequiredFieldValidator>            
            <asp:RegularExpressionValidator ID="lettersValidator2" runat="server" ControlToValidate="txtCountry" Display="Dynamic" ErrorMessage="Only letters accepted" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>           
        </div>
        <br />
        <label class="control-label">Postal Code:</label>
        <div>
            <asp:TextBox ID="txtPostal" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValidatorPostal" runat="server" ErrorMessage="Please enter your postal code" ControlToValidate="txtPostal" Display="Dynamic"></asp:RequiredFieldValidator>            
            <asp:RegularExpressionValidator ID="regexValidatorPostal" runat="server" ControlToValidate="txtPostal" ErrorMessage="Postal code format: X3X3X3 or X3X 3X3" ValidationExpression="^[abceghj-nprstvxyABCEGHJ-NPRSTVXY]\d[abceghj-nprstv-zABCEGHJ-NPRSTV-Z][ ]?\d[abceghj-nprstv-zABCEGHJ-NPRSTV-Z]\d$" Display="Dynamic"></asp:RegularExpressionValidator>            
        </div>
    </div>    
</fieldset>
        
<fieldset class="sectStyle">
    <legend>Contact Info:</legend>
    <div class="form-group">
        <label class="control-label">Email:</label>
        <div>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>            
            <asp:RegularExpressionValidator ID="emailValidator" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <br />
        <label class="control-label">Home Phone (with area code):</label>
        <div>
            <asp:TextBox ID="txtHomePhone" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValidatorHomePhone" runat="server" ErrorMessage="Please enter your home phone number" ControlToValidate="txtHomePhone" Display="Dynamic"></asp:RequiredFieldValidator>            
            <asp:RegularExpressionValidator ID="regexHomePhone" runat="server" ControlToValidate="txtHomePhone" Display="Dynamic" ErrorMessage="Please enter a valid phone number with area code and no leading 1" ValidationExpression="\(?\d{3}\)?-? ?\d{3}-? ?\d{4}"></asp:RegularExpressionValidator>           
        </div>
        <br />
        <label class="control-label">Business Phone (with area code):</label>
        <div>
            <asp:TextBox ID="txtBusinessPhone" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regexBusPhone" runat="server" ControlToValidate="txtBusinessPhone" ErrorMessage="Please enter a valid phone number with area code and no leading 1" ValidationExpression="\(?\d{3}\)?-? ?\d{3}-? ?\d{4}" Display="Dynamic"></asp:RegularExpressionValidator>            
        </div>
    </div>    
</fieldset>
        <!-- Buttons -->
        <div class="form-group">
            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary" CausesValidation="false" OnClick="btnClear_Click"  />
            </div>
        </div>
</asp:Content>
