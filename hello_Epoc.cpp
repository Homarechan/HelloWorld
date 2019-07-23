// Hello World in C++, Epoc style (for Symbian OS)

#include <eikapp.h>
#include <eikdoc.h>
#include <eikappui.h>

class CHelloWorldAppUi;
class CEikApplication;
class CHelloWorldAppView;

class CHelloWorldApplication : public CEikApplication
{
public:
    TUid AppDllUid() const;

protected:
    CApaDocument *CreateDocumentL();
};

class CHelloWorldDocument : public CEikDocument
{
public:
    static CHelloWorldDocument *NewL(CEikApplication &aApp);
    static CHelloWorldDocument *NewLC(CEikApplication &aApp);
    ~CHelloWorldDocument(){};

public:
    CEikAppUi *CreateAppUiL();

private:
    void ConstructL(){};
    CHelloWorldDocument(CEikApplication &aApp){};
};

class CHelloWorldAppUi : public CEikAppUi
{
public:
    void ConstructL();
    CHelloWorldAppUi(){};
    ~CHelloWorldAppUi(){};
};

static const TUid KUidHelloWorldApp = {0x10005B91};

GLDEF_C TInt E32Dll(TDllReason)
{
    return KErrNone;
}

EXPORT_C CApaApplication *NewApplication()
{
    return (new CHelloWorldApplication);
}

CApaDocument *CHelloWorldApplication::CreateDocumentL()
{
    CApaDocument *document = CHelloWorldDocument::NewL(*this);
    return document;
}

TUid CHelloWorldApplication::AppDllUid() const
{
    return KUidHelloWorldApp;
}

CHelloWorldDocument *CHelloWorldDocument::NewL(CEikApplication &aApp)
{
    CHelloWorldDocument *self = NewLC(aApp);
    CleanupStack::Pop(self);
    return self;
}

CHelloWorldDocument *CHelloWorldDocument::NewLC(CEikApplication &aApp)
{
    CHelloWorldDocument *self = new (ELeave) CHelloWorldDocument(aApp);
    CleanupStack::PushL(self);
    self->ConstructL();
    return self;
}

CEikAppUi *CHelloWorldDocument::CreateAppUiL()
{
    CEikAppUi *appUi = new (ELeave) CHelloWorldAppUi;
    return appUi;
}

void CHelloWorldAppUi::ConstructL()
{
    BaseConstructL();

    _LIT(message, "Hello!");
    CAknInformationNote *informationNote = new (ELeave) CAknInformationNote;
    informationNote->ExecuteLD(message);
}