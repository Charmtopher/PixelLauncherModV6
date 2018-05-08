.class public final synthetic Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$qr2_DaqtDn0T6cPZLzHlj54aOQg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/ButtonDropTarget;

.field private final synthetic f$1:Lcom/android/launcher3/DropTarget$DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$qr2_DaqtDn0T6cPZLzHlj54aOQg;->f$0:Lcom/android/launcher3/ButtonDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$qr2_DaqtDn0T6cPZLzHlj54aOQg;->f$1:Lcom/android/launcher3/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$qr2_DaqtDn0T6cPZLzHlj54aOQg;->f$0:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$qr2_DaqtDn0T6cPZLzHlj54aOQg;->f$1:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->lambda$onDrop$1(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method
