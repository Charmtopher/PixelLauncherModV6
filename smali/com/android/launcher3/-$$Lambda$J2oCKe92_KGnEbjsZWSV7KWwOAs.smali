.class public final synthetic Lcom/android/launcher3/-$$Lambda$J2oCKe92_KGnEbjsZWSV7KWwOAs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/util/ViewOnDrawExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$J2oCKe92_KGnEbjsZWSV7KWwOAs;->f$0:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$J2oCKe92_KGnEbjsZWSV7KWwOAs;->f$0:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->onLoadAnimationCompleted()V

    return-void
.end method
