.class public Lcom/android/launcher3/ExtendedEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field public mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

.field public mForceDisableSuggestions:Z

.field public mShowImeAfterFirstLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/ExtendedEditText;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->showSoftInput()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/ExtendedEditText;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/android/launcher3/ExtendedEditText;->mShowImeAfterFirstLayout:Z

    return p1
.end method


# virtual methods
.method public final dispatchBackKey()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    invoke-interface {v0}, Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    .line 113
    :cond_0
    return-void
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/EditText;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    .line 80
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 68
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    invoke-interface {p1}, Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    move-result p1

    return p1

    .line 72
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 74
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 85
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 86
    iget-boolean p1, p0, Lcom/android/launcher3/ExtendedEditText;->mShowImeAfterFirstLayout:Z

    if-eqz p1, :cond_0

    .line 88
    new-instance p1, Lcom/android/launcher3/ExtendedEditText$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/ExtendedEditText$1;-><init>(Lcom/android/launcher3/ExtendedEditText;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ExtendedEditText;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ExtendedEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 139
    return-void
.end method

.method public final showSoftInput()Z
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 103
    return v0
.end method
