.class Lcom/android/quickstep/TouchInteractionService$1;
.super Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onBind$0(Lcom/android/quickstep/TouchInteractionService$1;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->access$300(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    .line 103
    invoke-virtual {v1}, Lcom/android/quickstep/TouchInteractionService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-interface {v0, v1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setRecentsOnboardingText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0, p1}, Lcom/android/quickstep/TouchInteractionService;->access$302(Lcom/android/quickstep/TouchInteractionService;Lcom/android/systemui/shared/recents/ISystemUiProxy;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 101
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$400(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsModel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->access$300(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/RecentsModel;->setSystemUiProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V

    .line 102
    new-instance p1, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$1$vZAowF-Pmv1i2F9muu4ZwMEFJJk;

    invoke-direct {p1, p0}, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$1$vZAowF-Pmv1i2F9muu4ZwMEFJJk;-><init>(Lcom/android/quickstep/TouchInteractionService$1;)V

    invoke-static {p1}, Lcom/android/quickstep/RemoteRunnable;->executeSafely(Lcom/android/quickstep/RemoteRunnable;)V

    .line 104
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$500(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewInteractionState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->access$300(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/OverviewInteractionState;->setSystemUiProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V

    .line 105
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->access$100(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/MotionEventQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/MotionEventQueue;->queue(Landroid/view/MotionEvent;)V

    .line 92
    invoke-static {}, Lcom/android/quickstep/TouchInteractionService;->access$200()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .locals 0

    .line 141
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$100(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/MotionEventQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/MotionEventQueue;->onQuickScrubEnd()V

    .line 145
    :cond_0
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 1

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/quickstep/TouchInteractionService;->access$000(Lcom/android/quickstep/TouchInteractionService;I)V

    .line 133
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$100(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/MotionEventQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/MotionEventQueue;->onOverviewShownFromAltTab()V

    return-void

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$600(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewCommandHelper;->onOverviewShown()V

    .line 137
    return-void
.end method

.method public onOverviewToggle()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->access$600(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewCommandHelper;->onOverviewToggle()V

    .line 127
    return-void
.end method

.method public onPreMotionEvent(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0, p1}, Lcom/android/quickstep/TouchInteractionService;->access$000(Lcom/android/quickstep/TouchInteractionService;I)V

    .line 85
    return-void
.end method

.method public onQuickScrubEnd()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->access$100(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/MotionEventQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/MotionEventQueue;->onQuickScrubEnd()V

    .line 121
    return-void
.end method

.method public onQuickScrubProgress(F)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->access$100(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/MotionEventQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/MotionEventQueue;->onQuickScrubProgress(F)V

    .line 116
    return-void
.end method

.method public onQuickScrubStart()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->access$100(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/MotionEventQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/MotionEventQueue;->onQuickScrubStart()V

    .line 110
    return-void
.end method

.method public onQuickStep(Landroid/view/MotionEvent;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->access$100(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/MotionEventQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/MotionEventQueue;->onQuickStep(Landroid/view/MotionEvent;)V

    .line 150
    return-void
.end method
