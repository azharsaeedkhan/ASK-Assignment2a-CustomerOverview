page 90306 "Customer Overview"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Customer Overview";
    Caption = 'Customer Overview';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; "Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Source Code"; "Source Code")
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field(LastRunDate; LastRunDate)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Import Records")
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                    UpdateCustomerOverview: Codeunit "Update Customer Overview";
                begin
                    UpdateCustomerOverview.Run();
                end;
            }
        }
    }
}