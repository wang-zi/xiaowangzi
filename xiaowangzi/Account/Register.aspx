<%@ Page Title="注册" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="xiaowangzi.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>创建新帐户</h2>
    </hgroup>

    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p class="message-info">
                        密码必须至少包含 <%: Membership.MinRequiredPasswordLength %> 个字符。
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>注册表单</legend>
                        <ol>
                            <li>
                                用户名</br>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                     ErrorMessage="用户名字段是必填字段。" />
                            </li>
                            <li>
                                密码</br>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                     ErrorMessage="密码字段是必填字段。" />
                            </li>
                            <li>
                                确认密码</br>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                      Display="Dynamic" ErrorMessage="“确认密码”字段是必填字段。" />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                    Display="Dynamic" ErrorMessage="密码和确认密码不匹配。" />
                            </li>
                            <li>
                                请输入你的出生年月：<br/>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/> 
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br/>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic"
                                 ErrorMessage="你输入的出生年月不符合" MaximumValue ="12" MinimumValue ="1"
                                    Type="Integer" ></asp:RangeValidator> 
                            </li>
                            <li>
                                电子邮件:<br/>
                                <asp:TextBox ID="Email" runat="server" Width="284px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
                                  Display="Dynamic">必须输入数据,不可以空白!</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic"
                                  ControlToValidate="Email" ValidationExpression="^[\w-]+@[\w-]+\.(com|net|org|edu|mil)$">请输入格式正确的电子邮件!</asp:RegularExpressionValidator>
                             
                            </li>
                            <li>
                                邮政编码:<br/>
                               <asp:TextBox ID="txtZipCode" runat="server" Width="140px"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtZipCode"
                                 Display="Dynamic">必须输入数据,不可以空白!</asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" Display="Dynamic"
                                 ControlToValidate ="txtZipCode" ValidationExpression="^\d{5}$">邮政编码必须是 5 个数字!</asp:RegularExpressionValidator>
                                
                            </li>
                            <li>
                               联系电话:<br/>
                              <asp:TextBox ID="txtPhone" runat="server" Width="236px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone"
                               Display="Dynamic">必须输入数据,不可以空白!</asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic"
                               ControlToValidate="txtPhone" ValidationExpression="\d{11}$">请输入11位电话号码!</asp:RegularExpressionValidator>
                             
                            </li>
                        </ol>
                        <asp:Button runat="server" CommandName="MoveNext" Text="注册" />
                    </fieldset>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>