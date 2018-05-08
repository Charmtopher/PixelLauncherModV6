.class public Lcom/android/launcher3/folder/FolderIconPreviewVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDisplayingUpperLeftQuadrant:Z

.field private mGridCountX:I

.field private final mGridSize:[I

.field private final mMaxGridCountX:I

.field private final mMaxGridCountY:I

.field private final mMaxItemsPerPage:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridSize:[I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mDisplayingUpperLeftQuadrant:Z

    .line 38
    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountX:I

    .line 39
    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput p1, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountY:I

    .line 40
    iget p1, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountX:I

    iget v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountY:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxItemsPerPage:I

    .line 41
    return-void
.end method


# virtual methods
.method public final isItemInPreview(II)Z
    .locals 3

    .line 67
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mDisplayingUpperLeftQuadrant:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    const/4 p1, 0x4

    if-ge p2, p1, :cond_1

    return v0

    :cond_1
    return v1

    .line 68
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridCountX:I

    rem-int p1, p2, p1

    .line 69
    iget v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridCountX:I

    div-int/2addr p2, v2

    .line 70
    const/4 v2, 0x2

    if-ge p1, v2, :cond_3

    if-ge p2, v2, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final setFolderInfo(Lcom/android/launcher3/FolderInfo;)V
    .locals 7

    .line 44
    iget-object p1, p1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 45
    iget v3, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountX:I

    iget v4, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountY:I

    iget v5, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxItemsPerPage:I

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridSize:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/folder/FolderPagedView;->calculateGridSize(IIIIII[I)V

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridSize:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridCountX:I

    .line 49
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mDisplayingUpperLeftQuadrant:Z

    .line 50
    return-void
.end method
