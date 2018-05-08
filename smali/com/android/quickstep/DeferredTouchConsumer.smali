.class public Lcom/android/quickstep/DeferredTouchConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/TouchConsumer;


# instance fields
.field private mMyQueue:Lcom/android/quickstep/MotionEventQueue;

.field private mTarget:Lcom/android/quickstep/TouchConsumer;

.field private final mTouchProvider:Lcom/android/quickstep/DeferredTouchConsumer$DeferredTouchProvider;

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/DeferredTouchConsumer$DeferredTouchProvider;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 38
    iput-object p1, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTouchProvider:Lcom/android/quickstep/DeferredTouchConsumer$DeferredTouchProvider;

    .line 39
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/MotionEvent;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTarget:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/TouchConsumer;->accept(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/DeferredTouchConsumer;->accept(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public deferInit()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTouchProvider:Lcom/android/quickstep/DeferredTouchConsumer$DeferredTouchProvider;

    iget-object v1, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-interface {v0, v1}, Lcom/android/quickstep/DeferredTouchConsumer$DeferredTouchProvider;->createTouchConsumer(Landroid/view/VelocityTracker;)Lcom/android/quickstep/TouchConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTarget:Lcom/android/quickstep/TouchConsumer;

    .line 80
    iget-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTarget:Lcom/android/quickstep/TouchConsumer;

    iget-object v1, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mMyQueue:Lcom/android/quickstep/MotionEventQueue;

    invoke-interface {v0, v1}, Lcom/android/quickstep/TouchConsumer;->getIntrimChoreographer(Lcom/android/quickstep/MotionEventQueue;)Landroid/view/Choreographer;

    .line 81
    return-void
.end method

.method public deferNextEventToMainThread()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTarget:Lcom/android/quickstep/TouchConsumer;

    .line 92
    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/android/quickstep/TouchConsumer;->deferNextEventToMainThread()Z

    move-result v0

    return v0
.end method

.method public forceToLauncherConsumer()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTarget:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/TouchConsumer;->forceToLauncherConsumer()Z

    move-result v0

    return v0
.end method

.method public getIntrimChoreographer(Lcom/android/quickstep/MotionEventQueue;)Landroid/view/Choreographer;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mMyQueue:Lcom/android/quickstep/MotionEventQueue;

    .line 74
    const/4 p1, 0x0

    return-object p1
.end method

.method public onQuickScrubEnd()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTarget:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/TouchConsumer;->onQuickScrubEnd()V

    .line 59
    return-void
.end method

.method public onQuickScrubProgress(F)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTarget:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/TouchConsumer;->onQuickScrubProgress(F)V

    .line 64
    return-void
.end method

.method public preProcessMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 69
    return-void
.end method

.method public reset()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTarget:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/TouchConsumer;->reset()V

    .line 49
    return-void
.end method

.method public updateTouchTracking(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/quickstep/DeferredTouchConsumer;->mTarget:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/TouchConsumer;->updateTouchTracking(I)V

    .line 54
    return-void
.end method
