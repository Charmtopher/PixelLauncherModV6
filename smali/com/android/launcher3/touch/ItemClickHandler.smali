.class public Lcom/android/launcher3/touch/ItemClickHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-object v0, Lcom/android/launcher3/touch/-$$Lambda$ItemClickHandler$oPqR0koj5OQZ6VtyqmfcFGp5X0Q;->INSTANCE:Lcom/android/launcher3/touch/-$$Lambda$ItemClickHandler$oPqR0koj5OQZ6VtyqmfcFGp5X0Q;

    sput-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic lambda$oPqR0koj5OQZ6VtyqmfcFGp5X0Q(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$onClickPendingAppItem$0(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 147
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->startMarketIntentForPackage(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onClickPendingAppItem$1(Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 149
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 150
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    new-instance p3, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p3, p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p2, p2, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 149
    return-void
.end method

.method private static onClick(Landroid/view/View;)V
    .locals 6

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 69
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 74
    instance-of v2, v1, Lcom/android/launcher3/ShortcutInfo;

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    .line 75
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v1, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    and-int/lit8 v2, v2, 0x3f

    and-int/lit8 v2, v2, -0x5

    and-int/lit8 v2, v2, -0x9

    if-eqz v2, :cond_6

    iget-object p0, v1, Lcom/android/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, v1, Lcom/android/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {v0, p0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const p0, 0x7f0c0024

    iget v2, v1, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    const p0, 0x7f0c0025

    goto :goto_0

    :cond_3
    iget v2, v1, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    and-int/2addr v2, v3

    if-nez v2, :cond_4

    iget v1, v1, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    :cond_4
    const p0, 0x7f0c0027

    :cond_5
    :goto_0
    invoke-static {v0, p0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    instance-of v2, p0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-object v2, v1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v4

    goto/16 :goto_2

    :cond_8
    invoke-static {p0, v1, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;)V

    return-void

    .line 76
    :cond_9
    instance-of v2, v1, Lcom/android/launcher3/FolderInfo;

    if-eqz v2, :cond_b

    .line 77
    instance-of v0, p0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_12

    .line 78
    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    :cond_a
    return-void

    .line 80
    :cond_b
    instance-of v2, v1, Lcom/android/launcher3/AppInfo;

    if-eqz v2, :cond_c

    .line 81
    check-cast v1, Lcom/android/launcher3/AppInfo;

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;)V

    return-void

    .line 82
    :cond_c
    instance-of v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v1, :cond_12

    .line 83
    instance-of v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v1, :cond_12

    .line 84
    check-cast p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_d

    const p0, 0x7f0c0026

    invoke-static {v0, p0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object p0

    iget-object v2, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    new-instance v2, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {v1, v3}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result p0

    if-eqz p0, :cond_12

    iget p0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v3, 0xc

    invoke-virtual {v2, v0, p0, v1, v3}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)V

    return-void

    :cond_e
    const/16 p0, 0xd

    invoke-virtual {v2, v0, v1, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;I)Z

    return-void

    :cond_f
    iget-object v2, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    if-ltz v1, :cond_10

    goto :goto_2

    :cond_10
    move v4, v5

    :goto_2
    if-eqz v4, :cond_11

    invoke-static {p0, v0, v2}, Lcom/android/launcher3/touch/ItemClickHandler;->startMarketIntentForPackage(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c006e

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c006f

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c006d

    new-instance v4, Lcom/android/launcher3/touch/-$$Lambda$ItemClickHandler$pDeQ3BqRn7QIF3ywCbHDQBEOUNw;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/launcher3/touch/-$$Lambda$ItemClickHandler$pDeQ3BqRn7QIF3ywCbHDQBEOUNw;-><init>(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x7f0c006c

    new-instance v3, Lcom/android/launcher3/touch/-$$Lambda$ItemClickHandler$ybj7MHOR9LbGx6T4RkopJHIkLSs;

    invoke-direct {v3, v0, v2}, Lcom/android/launcher3/touch/-$$Lambda$ItemClickHandler$ybj7MHOR9LbGx6T4RkopJHIkLSs;-><init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 87
    :cond_12
    return-void
.end method

.method private static startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 3

    .line 209
    instance-of v0, p1, Lcom/android/launcher3/PromiseAppInfo;

    if-eqz v0, :cond_0

    .line 210
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/PromiseAppInfo;

    .line 211
    invoke-virtual {v0, p2}, Lcom/android/launcher3/PromiseAppInfo;->getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 212
    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 215
    :goto_0
    if-eqz v0, :cond_2

    .line 218
    instance-of v1, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 219
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 220
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    if-ne v1, v2, :cond_1

    .line 226
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    move-object v0, v1

    :cond_1
    invoke-virtual {p2, p0, v0, p1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 231
    return-void

    .line 216
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input must have a valid intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static startMarketIntentForPackage(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 156
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 157
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 158
    return-void
.end method
