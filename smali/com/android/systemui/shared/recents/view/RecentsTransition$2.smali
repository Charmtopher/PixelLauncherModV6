.class Lcom/android/systemui/shared/recents/view/RecentsTransition$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic val$animationStartCallback:Ljava/lang/Runnable;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$2;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$2;->val$animationStartCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$2;->val$handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$2;->val$animationStartCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method
