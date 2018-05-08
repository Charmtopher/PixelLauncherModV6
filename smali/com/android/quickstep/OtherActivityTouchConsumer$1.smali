.class Lcom/android/quickstep/OtherActivityTouchConsumer$1;
.super Lcom/android/systemui/shared/system/AssistDataReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/OtherActivityTouchConsumer;


# direct methods
.method constructor <init>(Lcom/android/quickstep/OtherActivityTouchConsumer;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$1;->this$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/AssistDataReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$1;->this$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

    invoke-static {v0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->access$100(Lcom/android/quickstep/OtherActivityTouchConsumer;)Lcom/android/quickstep/RecentsModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$1;->this$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

    invoke-static {v1}, Lcom/android/quickstep/OtherActivityTouchConsumer;->access$000(Lcom/android/quickstep/OtherActivityTouchConsumer;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/RecentsModel;->preloadAssistData(ILandroid/os/Bundle;)V

    .line 223
    return-void
.end method
