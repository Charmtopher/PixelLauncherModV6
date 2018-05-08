.class public Landroid/arch/lifecycle/y;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private aw:Landroid/arch/lifecycle/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 130
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 38
    const-string v0, "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Landroid/arch/lifecycle/y;

    invoke-direct {v1}, Landroid/arch/lifecycle/y;-><init>()V

    const-string v2, "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 41
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 43
    :cond_0
    return-void
.end method

.method private c(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 112
    invoke-virtual {p0}, Landroid/arch/lifecycle/y;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 113
    instance-of v1, v0, Landroid/arch/lifecycle/o;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Landroid/arch/lifecycle/o;

    invoke-interface {v0}, Landroid/arch/lifecycle/o;->h()Landroid/arch/lifecycle/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 115
    return-void

    .line 118
    :cond_0
    instance-of v1, v0, Landroid/arch/lifecycle/k;

    if-eqz v1, :cond_1

    .line 119
    check-cast v0, Landroid/arch/lifecycle/k;

    invoke-interface {v0}, Landroid/arch/lifecycle/k;->f()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    .line 120
    instance-of v1, v0, Landroid/arch/lifecycle/l;

    if-eqz v1, :cond_1

    .line 121
    check-cast v0, Landroid/arch/lifecycle/l;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    sget-object p1, Landroid/arch/lifecycle/Lifecycle$Event;->J:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/y;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 106
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->O:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/y;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/lifecycle/y;->aw:Landroid/arch/lifecycle/z;

    .line 109
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 94
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->M:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/y;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 87
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->L:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/y;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 89
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 80
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->K:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/y;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 82
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 100
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->N:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/y;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 101
    return-void
.end method
