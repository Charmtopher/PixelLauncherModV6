.class Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherAppWidgetHost$ProviderChangedListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field private final mInfos:Ljava/util/ArrayList;

.field private mRefreshPending:Z

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppWidgetHost;)V
    .locals 0

    .line 3414
    iput-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3415
    iput-object p2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    .line 3416
    iput-object p3, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 3417
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    .line 3418
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 3420
    iget-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherAppWidgetHost;->addProviderChangeListener(Lcom/android/launcher3/LauncherAppWidgetHost$ProviderChangedListener;)V

    .line 3423
    iget-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x2710

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3424
    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 1

    .line 3439
    instance-of v0, p3, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3440
    check-cast p3, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3443
    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final notifyWidgetProvidersChanged()V
    .locals 0

    .line 3452
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    .line 3453
    return-void
.end method

.method public run()V
    .locals 4

    .line 3428
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppWidgetHost;->removeProviderChangeListener(Lcom/android/launcher3/LauncherAppWidgetHost$ProviderChangedListener;)V

    .line 3429
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3431
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    if-nez v0, :cond_0

    .line 3432
    return-void

    .line 3435
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 3437
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3438
    iget-object v2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    new-instance v3, Lcom/android/launcher3/-$$Lambda$Workspace$DeferredWidgetRefresh$QJ_ezjGeqdfTWxjJynsqyQJjdQQ;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/-$$Lambda$Workspace$DeferredWidgetRefresh$QJ_ezjGeqdfTWxjJynsqyQJjdQQ;-><init>(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 3445
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    .line 3446
    invoke-virtual {v1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->reInflate()V

    .line 3447
    goto :goto_0

    .line 3448
    :cond_1
    return-void
.end method
