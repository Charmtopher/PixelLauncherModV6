.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field final synthetic val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/AssistDataReceiver;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/AssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/AssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V

    .line 215
    return-void
.end method
