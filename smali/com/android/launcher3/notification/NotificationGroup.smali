.class public Lcom/android/launcher3/notification/NotificationGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mChildKeys:Ljava/util/Set;

.field mGroupSummaryKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    .line 31
    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final removeChildKey(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method
