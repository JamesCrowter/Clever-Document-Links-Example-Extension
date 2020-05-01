pageextension 50149 "ExampleTwo" extends "Salespersons/Purchasers"
{
    layout
    {
        addfirst(FactBoxes)
        {
            part(DLFileDropFactboxCDLTMN; "DL File Drop Factbox CDLTMN")
            {
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        CurrPage.DLFileDropFactboxCDLTMN.Page.SetDocumentRecordID(RecordId());
    end;
}