.class public Lcom/android/launcher3/FolderInfo;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"


# instance fields
.field public contents:Ljava/util/ArrayList;

.field public listeners:Ljava/util/ArrayList;

.field public options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/FolderInfo;->itemType:I

    .line 59
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FolderInfo;->user:Landroid/os/UserHandle;

    .line 60
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/launcher3/ShortcutInfo;IZ)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p2

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/FolderInfo$FolderListener;->onAdd(Lcom/android/launcher3/ShortcutInfo;I)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/launcher3/FolderInfo;->itemsChanged(Z)V

    .line 81
    return-void
.end method

.method public final add(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;IZ)V

    .line 69
    return-void
.end method

.method public final addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public final itemsChanged(Z)V
    .locals 2

    .line 120
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onItemsChanged(Z)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 106
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "options"

    iget v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 109
    return-void
.end method

.method public final prepareAutoUpdate()V
    .locals 2

    .line 126
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v1}, Lcom/android/launcher3/FolderInfo$FolderListener;->prepareAutoUpdate()V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public final remove(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onRemove(Lcom/android/launcher3/ShortcutInfo;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/FolderInfo;->itemsChanged(Z)V

    .line 94
    return-void
.end method

.method public final removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public final setOption(IZLcom/android/launcher3/model/ModelWriter;)V
    .locals 1

    .line 149
    iget v0, p0, Lcom/android/launcher3/FolderInfo;->options:I

    .line 150
    if-eqz p2, :cond_0

    .line 151
    iget p2, p0, Lcom/android/launcher3/FolderInfo;->options:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    goto :goto_0

    .line 153
    :cond_0
    iget p2, p0, Lcom/android/launcher3/FolderInfo;->options:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    .line 155
    :goto_0
    if-eqz p3, :cond_1

    iget p1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    if-eq v0, p1, :cond_1

    .line 156
    invoke-virtual {p3, p0}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 158
    :cond_1
    return-void
.end method
