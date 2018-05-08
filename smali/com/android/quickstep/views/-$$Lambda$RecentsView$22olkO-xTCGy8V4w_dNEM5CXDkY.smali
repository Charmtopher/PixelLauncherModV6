.class public final synthetic Lcom/android/quickstep/views/-$$Lambda$RecentsView$22olkO-xTCGy8V4w_dNEM5CXDkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$22olkO-xTCGy8V4w_dNEM5CXDkY;->f$0:Lcom/android/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final shouldIncludeView(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$22olkO-xTCGy8V4w_dNEM5CXDkY;->f$0:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskDismissAnimation$2(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
