.class public Lcom/android/launcher3/util/PendingAnimation$OnEndListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isSuccess:Z

.field public logAction:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lcom/android/launcher3/util/PendingAnimation$OnEndListener;->isSuccess:Z

    .line 60
    iput p2, p0, Lcom/android/launcher3/util/PendingAnimation$OnEndListener;->logAction:I

    .line 61
    return-void
.end method
