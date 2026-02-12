<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Adjustment.aspx.vb" Inherits="Adjustment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <title>Adjustment</title>
    <script>
        $(document).ready(function () {
            var date_input = $('input[name="pdate"]'); //our date input has the name "date"
            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
            date_input.datepicker({
                format: 'mm/dd/yyyy',
                container: container,
                todayHighlight: true,
                autoclose: true,
            })
        });

    </script>

    <style>
        #rdNav {
            display:none;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="hdnFirstTime" Value="0" runat="server" />
    <div class="container-fluid  bg-dark " style="margin-top: -10px;">
        <div class="row">
            <div class="col-sm-12 text-center">
                <h2 class="text-white pt-2" id="hdrCust" runat="server" style="text-shadow: 2px 2px 0px rgb(0, 148, 255);">Adjustment</h2>
            </div>

        </div>
    </div>


    <div class="container-fluid" style="background-color: #F4F6F6;">
        <div class="container">

            <div style="background-color: #F4F6F6;">
                <br />
                <div class="row mr-3 ml-3">

                    <div class="form-group col-sm-2 text-right mb-1">
                        <label class="control-label" for="pdate">Date:</label>
                    </div>
                    <div class="form-group col-sm-4 mb-1">
                        <input type="text" runat="server" class="form-control fullwidth" id="pdate" placeholder="Enter Pay Date" name="pdate" readonly="readonly" />
                    </div>
                    <div class="form-group col-sm-2 text-right mb-1">

                        <label class="control-label" for="amt">Amount:</label>
                    </div>
                    <div class="form-group col-sm-4 mb-1">

                        <input type="text" runat="server" class="form-control fullwidth" id="amt" placeholder="Enter Amount" name="amt" readonly="readonly" />
                    </div>

                </div>

                <div class="row mr-3 ml-3">
                    <div class="form-group col-sm-2 text-right mb-1">
                        <label class="control-label" for="ptype">Type:</label>
                    </div>
                    <div class="form-group col-sm-4 mb-1">
                        <input type="text" runat="server" class="form-control fullwidth" id="ptype" placeholder="Enter Type" name="ptype" />
                    </div>
                    <div class="form-group col-sm-2 text-right mb-1">

                        <label class="control-label" for="pdesc">Description:</label>
                    </div>
                    <div class="form-group col-sm-4 mb-1">

                        <input type="text" runat="server" class="form-control fullwidth" id="pdesc" placeholder="Enter Description" name="pdesc" />
                    </div>

                </div>

                <div class="row mr-3 ml-3" style="margin-bottom: 10px;">

                    <div class="form-group col-sm-2 text-right mb-1">
                        <label class="control-label" for="desc">Note:</label>
                    </div>
                    <div class="form-group col-sm-10 mb-1">
                        <textarea class="form-control" runat="server" style="min-width: 100%; max-width: 100%" id="desc" placeholder="Enter Notes" name="desc" rows="5"></textarea>
                    </div>

                </div>

                <p class="text-center">
                    <asp:Button ID="btnSave" runat="server" Text="Save Changes" />
                    <asp:Label ID="lblMessage" CssClass="text-danger font-weight-bold" runat="server"></asp:Label>
                            <br /><br />

                </p>

            </div>
            </div>
        </div>
</asp:Content>