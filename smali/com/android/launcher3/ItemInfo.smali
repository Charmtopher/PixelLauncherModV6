.class public Lcom/android/launcher3/ItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_ID:I = -0x1


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public contentDescription:Ljava/lang/CharSequence;

.field public id:J

.field public itemType:I

.field public minSpanX:I

.field public minSpanY:I

.field public rank:I

.field public screenId:J

.field public spanX:I

.field public spanY:I

.field public title:Ljava/lang/CharSequence;

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 55
    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 62
    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 72
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 82
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 87
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 92
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 112
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 113
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/ItemInfo;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 55
    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 62
    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 72
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 82
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 87
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 92
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ItemInfo;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 118
    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->checkItemInfo(Lcom/android/launcher3/ItemInfo;)V

    .line 119
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/launcher3/ItemInfo;)V
    .locals 2

    .line 122
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 123
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 124
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 125
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 126
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 127
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 128
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 129
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 130
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 131
    iget-object v0, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 132
    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 133
    return-void
.end method

.method public dumpProperties()Ljava/lang/String;
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 190
    invoke-static {v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/launcher3/ItemInfo;->container:J

    long-to-int v1, v1

    .line 191
    invoke-static {v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->containerToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cell("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") span("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") minSpan("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 4

    .line 174
    iget-wide v0, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    const-wide/16 v2, -0xc9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ItemInfo;->writeToValues(Lcom/android/launcher3/util/ContentWriter;)V

    .line 180
    const-string v0, "profileId"

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v2, p1, Lcom/android/launcher3/util/ContentWriter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    .line 181
    return-void

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFromValues(Landroid/content/ContentValues;)V
    .locals 2

    .line 160
    const-string v0, "itemType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 161
    const-string v0, "container"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 162
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 163
    const-string v0, "cellX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 164
    const-string v0, "cellY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 165
    const-string v0, "spanX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 166
    const-string v0, "spanY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 167
    const-string v0, "rank"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 168
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToValues(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3

    .line 149
    const-string v0, "itemType"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "container"

    iget-wide v1, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 150
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "screen"

    iget-wide v1, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 151
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "rank"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 157
    return-void
.end method
