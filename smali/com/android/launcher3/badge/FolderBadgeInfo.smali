.class public Lcom/android/launcher3/badge/FolderBadgeInfo;
.super Lcom/android/launcher3/badge/BadgeInfo;
.source "SourceFile"


# instance fields
.field public mNumNotifications:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/badge/BadgeInfo;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final addBadgeInfo(Lcom/android/launcher3/badge/BadgeInfo;)V
    .locals 2

    .line 36
    if-nez p1, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    iget v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    iget-object p1, p1, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    .line 40
    iget p1, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    const/4 v0, 0x0

    const/16 v1, 0x3e7

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    .line 42
    return-void
.end method

.method public final getNotificationCount()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public final hasBadge()Z
    .locals 1

    .line 60
    iget v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
