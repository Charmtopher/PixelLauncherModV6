.class Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mStackId:I

.field final mTaskId:I

.field final mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mPackageName:Ljava/lang/String;

    .line 297
    iput p2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mUserId:I

    .line 298
    iput p3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mTaskId:I

    .line 299
    iput p4, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mStackId:I

    .line 300
    return-void
.end method
