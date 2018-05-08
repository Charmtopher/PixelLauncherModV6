.class public Lcom/android/quickstep/RecentsActivityTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;


# static fields
.field private static sCurrentActivity:Ljava/lang/ref/WeakReference;

.field private static final sScheduler:Lcom/android/quickstep/RecentsActivityTracker$Scheduler;


# instance fields
.field private final mOnInitListener:Ljava/util/function/BiPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/quickstep/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 39
    new-instance v0, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;

    invoke-direct {v0, v1}, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;-><init>(Lcom/android/quickstep/RecentsActivityTracker$1;)V

    sput-object v0, Lcom/android/quickstep/RecentsActivityTracker;->sScheduler:Lcom/android/quickstep/RecentsActivityTracker$Scheduler;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/quickstep/RecentsActivityTracker;->mOnInitListener:Ljava/util/function/BiPredicate;

    .line 45
    return-void
.end method

.method static synthetic access$100()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 36
    sget-object v0, Lcom/android/quickstep/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/quickstep/RecentsActivityTracker;Lcom/android/quickstep/RecentsActivity;Z)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/RecentsActivityTracker;->init(Lcom/android/quickstep/RecentsActivity;Z)Z

    move-result p0

    return p0
.end method

.method public static getCurrentActivity()Lcom/android/quickstep/RecentsActivity;
    .locals 1

    .line 62
    sget-object v0, Lcom/android/quickstep/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    return-object v0
.end method

.method private init(Lcom/android/quickstep/RecentsActivity;Z)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityTracker;->mOnInitListener:Ljava/util/function/BiPredicate;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static onRecentsActivityCreate(Lcom/android/quickstep/RecentsActivity;)V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/quickstep/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 76
    sget-object v0, Lcom/android/quickstep/RecentsActivityTracker;->sScheduler:Lcom/android/quickstep/RecentsActivityTracker$Scheduler;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->initIfPending(Lcom/android/quickstep/RecentsActivity;Z)Z

    .line 77
    return-void
.end method

.method public static onRecentsActivityDestroy(Lcom/android/quickstep/RecentsActivity;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/android/quickstep/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 86
    sget-object p0, Lcom/android/quickstep/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 88
    :cond_0
    return-void
.end method

.method public static onRecentsActivityNewIntent(Lcom/android/quickstep/RecentsActivity;)V
    .locals 2

    .line 81
    sget-object v0, Lcom/android/quickstep/RecentsActivityTracker;->sScheduler:Lcom/android/quickstep/RecentsActivityTracker$Scheduler;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->isStarted()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->initIfPending(Lcom/android/quickstep/RecentsActivity;Z)Z

    .line 82
    return-void
.end method


# virtual methods
.method public register()V
    .locals 1

    .line 49
    sget-object v0, Lcom/android/quickstep/RecentsActivityTracker;->sScheduler:Lcom/android/quickstep/RecentsActivityTracker$Scheduler;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->schedule(Lcom/android/quickstep/RecentsActivityTracker;)V

    .line 50
    return-void
.end method

.method public registerAndStartActivity(Landroid/content/Intent;Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivityTracker;->register()V

    .line 70
    invoke-interface {p2, p4, p5, p6}, Lcom/android/quickstep/util/RemoteAnimationProvider;->toActivityOptions(Landroid/os/Handler;J)Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 71
    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 54
    sget-object v0, Lcom/android/quickstep/RecentsActivityTracker;->sScheduler:Lcom/android/quickstep/RecentsActivityTracker$Scheduler;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsActivityTracker$Scheduler;->clearReference(Lcom/android/quickstep/RecentsActivityTracker;)Z

    .line 55
    return-void
.end method
