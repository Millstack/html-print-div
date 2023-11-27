<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintDiv.aspx.cs" Inherits="Print_Div_PrintDiv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print Div</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+J2Wk5vqXn3Fm/z2N1r8f6VZJ4T3Hdvh4kXG1j4fZ6IsU2f5" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script type="text/javascript" src="JavaScript.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="card no-b no-r px-4 m-4">
            <div class="card-body">
                <div class="form-row mt-5">
                    <div class="form-group col-6 m-0">
                        <label for="email" class="col-form-label badge bg-primary text-wrap mb-4 fs-6 shadow border">
                            <asp:Literal ID="Literal2" Text="Print selected Div" runat="server"></asp:Literal>
                        </label>
                        <div>
                            <button id="btnPrint" onclick="printDiv('divPrinr');" class="p-3">Print</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card no-b no-r px-4 m-4">
            <div class="card-body">
                <div class="form-group col-6 m-0 fs-3">
                    This is the First div
                    <br />
                    <p class="fw-bold">Header</p>
                </div>
            </div>
        </div>
        <div id="divPrinr" class="card no-b no-r px-4 m-4">
            <div class="card-body">
                <div class="form-group col-6 m-0 fs-3">
                    This is the Second div
                    <br />
                    <p class="fw-bold">Content</p>
                    <p class="fst-italic">the division to print</p>
                </div>
            </div>
        </div>
        <div class="card no-b no-r px-4 m-4">
            <div class="card-body">
                <div class="form-group col-6 m-0 fs-3">
                    This is the Third div
                    <br />
                    <p class="fw-bold">Footer</p>
                </div>
            </div>
        </div>
    </form>

    <script>
        function printDiv(divId) {
            var printContents = document.getElementById(divId).outerHTML;
            var originalContents = document.body.innerHTML;

            // Replace the current content with the content of the specified div
            document.body.innerHTML = printContents;

            // Trigger the print function
            window.print();

            // Restore the original content after printing
            document.body.innerHTML = originalContents;
        }
    </script>
</body>
</html>
