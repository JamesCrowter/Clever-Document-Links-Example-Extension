page 50149 "Sample Table List"
{
    Caption = 'Sample Table List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Sample Table";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Code)
                {
                    ApplicationArea = Basic, Suite;
                }
                field(Description; Description)
                {
                    ApplicationArea = Basic, Suite;
                }
            }
        }
        area(Factboxes)
        {
            part(DLFileDropFactboxCDLTMN; "DL File Drop Factbox CDLTMN")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        CurrPage.DLFileDropFactboxCDLTMN.Page.SetDocumentRecordID(RecordId());
    end;
}