.class public Lcom/google/android/apps/nexuslauncher/qsb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private final Af:Ljava/lang/String;

.field private final Ag:Landroid/content/Intent;

.field final synthetic Ah:Lcom/google/android/apps/nexuslauncher/qsb/a;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/a;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Ah:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Af:Ljava/lang/String;

    .line 524
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Ag:Landroid/content/Intent;

    .line 525
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 555
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x1020022

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Af:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Ah:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Af:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/a;->a(Ljava/lang/String;I)V

    .line 557
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 558
    return v1

    .line 559
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x7f0e0016

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Ag:Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 560
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Ah:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Ag:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 561
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 562
    return v1

    .line 564
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 529
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 531
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 532
    sget-object v1, Lcom/android/launcher3/Launcher;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 534
    nop

    .line 535
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Af:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 536
    const p1, 0x1020022

    const v2, 0x104000b

    invoke-interface {p2, v1, p1, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 537
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 538
    nop

    .line 540
    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->Ag:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 541
    const p1, 0x7f0e0016

    const v2, 0x7f0c00ca

    invoke-interface {p2, v1, p1, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const/16 p2, 0x8

    .line 542
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 543
    nop

    .line 545
    move p1, v0

    :cond_1
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 568
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 550
    const/4 p1, 0x1

    return p1
.end method
