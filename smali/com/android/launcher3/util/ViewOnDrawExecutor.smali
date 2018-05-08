.class public Lcom/android/launcher3/util/ViewOnDrawExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private mAttachedView:Landroid/view/View;

.field private mCompleted:Z

.field private mFirstDrawCompleted:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLoadAnimationCompleted:Z

.field private final mTasks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private attachObserver()V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public attachTo(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 46
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachTo(Lcom/android/launcher3/Launcher;Landroid/view/View;Z)V

    .line 47
    return-void
.end method

.method public attachTo(Lcom/android/launcher3/Launcher;Landroid/view/View;Z)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 51
    iput-object p2, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    .line 52
    iget-object p1, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 53
    if-nez p3, :cond_0

    .line 54
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLoadAnimationCompleted:Z

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachObserver()V

    .line 58
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const/16 p1, 0xa

    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->setWorkerPriority(I)V

    .line 70
    return-void
.end method

.method public isCompleted()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    return v0
.end method

.method public markCompleted()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-ne v1, p0, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 111
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->setWorkerPriority(I)V

    .line 112
    return-void
.end method

.method public onDraw()V
    .locals 1

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mFirstDrawCompleted:Z

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public onLoadAnimationCompleted()V
    .locals 1

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLoadAnimationCompleted:Z

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachObserver()V

    .line 75
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 78
    return-void
.end method

.method public run()V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLoadAnimationCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mFirstDrawCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->runAllTasks()V

    .line 99
    :cond_0
    return-void
.end method

.method public runAllTasks()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 120
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 121
    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 123
    return-void
.end method
