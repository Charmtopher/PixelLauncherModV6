.class public final synthetic Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/views/RecentsView;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/android/quickstep/views/TaskView;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;ZLcom/android/quickstep/views/TaskView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;->f$0:Lcom/android/quickstep/views/RecentsView;

    iput-boolean p2, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;->f$1:Z

    iput-object p3, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;->f$2:Lcom/android/quickstep/views/TaskView;

    iput p4, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;->f$0:Lcom/android/quickstep/views/RecentsView;

    iget-boolean v1, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;->f$1:Z

    iget-object v2, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;->f$2:Lcom/android/quickstep/views/TaskView;

    iget v3, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;->f$3:I

    check-cast p1, Lcom/android/launcher3/util/PendingAnimation$OnEndListener;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskDismissAnimation$4(Lcom/android/quickstep/views/RecentsView;ZLcom/android/quickstep/views/TaskView;ILcom/android/launcher3/util/PendingAnimation$OnEndListener;)V

    return-void
.end method
