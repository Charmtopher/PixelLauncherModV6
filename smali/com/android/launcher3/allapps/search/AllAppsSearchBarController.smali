.class public Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;


# instance fields
.field protected mCb:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

.field protected mInput:Lcom/android/launcher3/ExtendedEditText;

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field protected mQuery:Ljava/lang/String;

.field protected mSearchAlgorithm:Lcom/android/launcher3/allapps/search/SearchAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/search/SearchAlgorithm;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/launcher3/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 83
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/search/SearchAlgorithm;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/launcher3/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 86
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/search/SearchAlgorithm;

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/allapps/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V

    .line 88
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 71
    return-void
.end method

.method public final initialize(Lcom/android/launcher3/allapps/search/SearchAlgorithm;Lcom/android/launcher3/ExtendedEditText;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 0

    .line 58
    iput-object p4, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

    .line 59
    iput-object p3, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 61
    iput-object p2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    .line 62
    iget-object p2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    iget-object p2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 64
    iget-object p2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    iput-object p0, p2, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    .line 65
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/search/SearchAlgorithm;

    .line 66
    return-void
.end method

.method public final onBackKey()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 102
    const/4 p3, 0x0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 103
    return p3

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    return p3

    .line 111
    :cond_1
    iget-object p3, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 112
    invoke-static {v0, p2}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p3, p1, p2, v0}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 76
    return-void
.end method

.method public final refreshSearchResult()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/search/SearchAlgorithm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/search/SearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V

    .line 97
    return-void
.end method
