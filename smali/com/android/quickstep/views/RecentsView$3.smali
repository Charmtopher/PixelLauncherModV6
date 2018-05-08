.class Lcom/android/quickstep/views/RecentsView$3;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$3;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    .line 139
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/quickstep/views/RecentsView$3;->checkCurrentUserId(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 140
    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$3;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, p3}, Lcom/android/quickstep/views/RecentsView;->getTaskView(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    .line 145
    if-eqz p1, :cond_1

    .line 146
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView$3;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p2, p1}, Lcom/android/quickstep/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 148
    :cond_1
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$3;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    .line 154
    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$3;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/quickstep/views/TaskView;

    .line 134
    return-void
.end method
