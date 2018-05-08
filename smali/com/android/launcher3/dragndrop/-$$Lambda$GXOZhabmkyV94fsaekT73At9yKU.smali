.class public final synthetic Lcom/android/launcher3/dragndrop/-$$Lambda$GXOZhabmkyV94fsaekT73At9yKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/dragndrop/BaseItemDragListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/BaseItemDragListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$GXOZhabmkyV94fsaekT73At9yKU;->f$0:Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$GXOZhabmkyV94fsaekT73At9yKU;->f$0:Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->removeListener()V

    return-void
.end method
