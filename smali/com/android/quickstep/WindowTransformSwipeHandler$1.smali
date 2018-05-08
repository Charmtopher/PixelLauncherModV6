.class Lcom/android/quickstep/WindowTransformSwipeHandler$1;
.super Lcom/android/quickstep/MultiStateCallback;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$1;->this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-direct {p0}, Lcom/android/quickstep/MultiStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public setState(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$1;->this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-static {v0, p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->access$000(Lcom/android/quickstep/WindowTransformSwipeHandler;I)V

    .line 206
    invoke-super {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 207
    return-void
.end method
